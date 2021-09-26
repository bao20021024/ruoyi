package com.ruoyi.medical.controller;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.medical.domain.CostOutpatientRechargeRecord;
import com.ruoyi.medical.domain.TMedicalDo;
import com.ruoyi.medical.modle.InfoAndType;
import com.ruoyi.medical.service.ICostOutpatientRechargeRecordService;
import com.ruoyi.medical.service.ITMedicalDoService;
import com.ruoyi.util.MyIdGenUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.medical.domain.CostOutpatientInfo;
import com.ruoyi.medical.service.ICostOutpatientInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 门诊卡信息Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/info")
public class CostOutpatientInfoController extends BaseController {
    @Autowired
    private ICostOutpatientInfoService costOutpatientInfoService;

    @Autowired
    private ICostOutpatientRechargeRecordService icorrs;

    @Autowired
    private ITMedicalDoService itmds;

    /**
     * 查询门诊卡信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostOutpatientInfo costOutpatientInfo) {
        startPage();
        List<CostOutpatientInfo> list = costOutpatientInfoService.selectCostOutpatientInfoList(costOutpatientInfo);
        return getDataTable(list);
    }

    /**
     * 导出门诊卡信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:info:export')")
    @Log(title = "门诊卡信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CostOutpatientInfo costOutpatientInfo) {
        List<CostOutpatientInfo> list = costOutpatientInfoService.selectCostOutpatientInfoList(costOutpatientInfo);
        ExcelUtil<CostOutpatientInfo> util = new ExcelUtil<CostOutpatientInfo>(CostOutpatientInfo.class);
        return util.exportExcel(list, "门诊卡信息数据");
    }

    /**
     * 获取门诊卡信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:info:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return AjaxResult.success(costOutpatientInfoService.selectCostOutpatientInfoById(id));
    }

    /**
     * 新增门诊卡信息
     */
    @PreAuthorize("@ss.hasPermi('medical:info:add')")
    @Log(title = "门诊卡信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostOutpatientInfo costOutpatientInfo) {
        return toAjax(costOutpatientInfoService.insertCostOutpatientInfo(costOutpatientInfo));
    }

    /**
     * 修改门诊卡信息
     */
    @PreAuthorize("@ss.hasPermi('medical:info:edit')")
    @Log(title = "门诊卡信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostOutpatientInfo costOutpatientInfo) {
        int code = 0;
        Long status = costOutpatientInfo.getStatus();
        Date d = new Date();
        if (status == 1) {
            costOutpatientInfo.setEnableTime(d);
        } else if (status == 2) {
            costOutpatientInfo.setLossTime(d);
        } else if (status == 3) {
            costOutpatientInfo.setDeadTime(d);
        } else if (status == 4) {
            costOutpatientInfo.setReturnTime(d);
        }
        code = costOutpatientInfoService.updateCostOutpatientInfo(costOutpatientInfo);

        TMedicalDo tmd = costOutpatientInfo.getTmd();
        System.out.println(tmd);
        String doUser = tmd.getDoUser();
        String username = SecurityUtils.getUsername();
        if (code > 0 && !username.equals(doUser)) {
            tmd.setDoUser(username);
            tmd.setDoTime(d);
            code = itmds.updateTMedicalDo(tmd);
        }
        return toAjax(code);
    }

    /**
     * 充值/取现
     */
    @PreAuthorize("@ss.hasPermi('medical:info:edit')")
    @Log(title = "充值/取现", businessType = BusinessType.UPDATE)
    @PostMapping("/money")
    public AjaxResult editMoney(@RequestBody InfoAndType iat) {
        int code = 0;

        CostOutpatientInfo info = iat.getInfo();
        String type = iat.getType();
        Float money = iat.getMoney();
        String username = SecurityUtils.getUsername();
        String id = MyIdGenUtils.ByPinyinAndTimestamp(username);
        TMedicalDo tmd = info.getTmd();
        String doUser = tmd.getDoUser();
        Date d = new Date();
        CostOutpatientRechargeRecord corr = null;

        if ("充值".equals(type)) {
            info.setMoney(info.getMoney() + money);
        } else {
            info.setMoney(info.getMoney() - money);
        }

        code = costOutpatientInfoService.updateCostOutpatientInfo(info);

        if (code > 0) {
            if (!username.equals(doUser)) {
                tmd.setDoUser(username);
                tmd.setDoTime(d);

                code = itmds.updateTMedicalDo(tmd);
            }

            corr = new CostOutpatientRechargeRecord();
            corr.setId(id);
            corr.setMoney(money);
            corr.setCreateTime(d);
            corr.setOutpatientId(info.getId() + "");
            if ("充值".equals(type)) {
                corr.setType(1l);
            } else {
                corr.setType(2l);
            }

            code = icorrs.insertCostOutpatientRechargeRecord(corr);

            if (code > 0) {
                tmd.setDoId(id);

                id = MyIdGenUtils.ByPinyinAndTimestamp(username);
                tmd.setId(id);
                tmd.setDoType(2l);
                tmd.setDoUser(username);
                tmd.setDoTime(d);

                code = itmds.insertTMedicalDo(tmd);
            }
        }

        return toAjax(code);
    }

    /**
     * 删除门诊卡信息
     */
    @PreAuthorize("@ss.hasPermi('medical:info:remove')")
    @Log(title = "门诊卡信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(costOutpatientInfoService.deleteCostOutpatientInfoByIds(ids));
    }
}
