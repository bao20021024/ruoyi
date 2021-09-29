package com.ruoyi.medical.controller;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.medical.domain.CostOutpatientInfo;
import com.ruoyi.medical.domain.CostOutpatientRechargeRecord;
import com.ruoyi.medical.domain.TMedicalDo;
import com.ruoyi.medical.modle.ArchivesAndMoney;
import com.ruoyi.medical.service.ICostOutpatientInfoService;
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
import com.ruoyi.medical.domain.CostPersonArchives;
import com.ruoyi.medical.service.ICostPersonArchivesService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 个人档案Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/archives")
public class CostPersonArchivesController extends BaseController {
    @Autowired
    private ICostPersonArchivesService costPersonArchivesService;

    @Autowired
    private ICostOutpatientInfoService icois;

    @Autowired
    private ICostOutpatientRechargeRecordService icorrs;

    @Autowired
    private ITMedicalDoService itmds;

    /**
     * 查询个人档案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostPersonArchives costPersonArchives) {
        startPage();
        List<CostPersonArchives> list = costPersonArchivesService.selectCostPersonArchivesList(costPersonArchives);
        return getDataTable(list);
    }

    /**
     * 导出个人档案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:export')")
    @Log(title = "个人档案", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CostPersonArchives costPersonArchives) {
        List<CostPersonArchives> list = costPersonArchivesService.selectCostPersonArchivesList(costPersonArchives);
        ExcelUtil<CostPersonArchives> util = new ExcelUtil<CostPersonArchives>(CostPersonArchives.class);
        return util.exportExcel(list, "个人档案数据");
    }

    /**
     * 获取个人档案详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(costPersonArchivesService.selectCostPersonArchivesById(id));
    }

    /**
     * 新增个人档案
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:add')")
    @Log(title = "个人档案", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostPersonArchives costPersonArchives) {
        return toAjax(costPersonArchivesService.insertCostPersonArchives(costPersonArchives));
    }

    /**
     * 建档/办卡
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:add')")
    @Log(title = "个人档案", businessType = BusinessType.INSERT)
    @PostMapping("/jd")
    public AjaxResult jd(@RequestBody ArchivesAndMoney aam) {
        CostPersonArchives archives = aam.getArchives();
        Float money = aam.getMoney();
        String id = "";
        String username = SecurityUtils.getUsername();
        String doId = MyIdGenUtils.ByPinyinAndTimestamp(username);
        CostOutpatientInfo info = null;
        CostOutpatientRechargeRecord record = null;
        TMedicalDo tmd = null;
        Date d = new Date();
        int code = 0;

        if (archives.getId() == null) {
            id = MyIdGenUtils.ByPinyinAndTimestamp(archives.getName());
            archives.setId(id);
            code = costPersonArchivesService.insertCostPersonArchives(archives);
            if (code > 0) {
                tmd = new TMedicalDo();
                tmd.setId(doId);
                tmd.setDoUser(username);
                tmd.setDoTime(d);
                tmd.setDoId(id);
                tmd.setDoType(0l);

                code = itmds.insertTMedicalDo(tmd);
            }
        } else {
            tmd = new TMedicalDo();
            tmd.setDoUser(username);
            tmd.setDoTime(d);
            id = archives.getId();
            code = 1;
        }

        if (code > 0) {
            info = new CostOutpatientInfo();
            Long infoId = MyIdGenUtils.ByTimestamp();
            info.setId(infoId);
            info.setMoney(money);
            info.setEnableTime(d);
            info.setStatus(1l);
            info.setDeposit(10l);
            info.setPersonid(id);

            code = icois.insertCostOutpatientInfo(info);

            if (code > 0) {
                doId = MyIdGenUtils.ByPinyinAndTimestamp(username);
                tmd.setId(doId);
                tmd.setDoId(infoId + "");
                tmd.setDoType(1l);

                code = itmds.insertTMedicalDo(tmd);

                if (code > 0) {
                    doId = MyIdGenUtils.ByPinyinAndTimestamp(username);
                    record = new CostOutpatientRechargeRecord();
                    record.setId(doId);
                    record.setMoney(money);
                    record.setType(1l);
                    record.setCreateTime(d);
                    record.setOutpatientId(infoId + "");

                    code = icorrs.insertCostOutpatientRechargeRecord(record);

                    if (code > 0) {
                        tmd.setDoId(doId);

                        doId = MyIdGenUtils.ByPinyinAndTimestamp(username);
                        tmd.setId(doId);
                        tmd.setDoType(2l);

                        code = itmds.insertTMedicalDo(tmd);
                    }
                }
            }
        }

        return toAjax(code);
    }

    /**
     * 修改个人档案
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:edit')")
    @Log(title = "个人档案", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostPersonArchives costPersonArchives) {
        return toAjax(costPersonArchivesService.updateCostPersonArchives(costPersonArchives));
    }

    /**
     * 删除个人档案
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:remove')")
    @Log(title = "个人档案", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(costPersonArchivesService.deleteCostPersonArchivesByIds(ids));
    }

    /**
     * 获取个人档案详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:archives:query')")
    @PostMapping("/getCostInfo")
    public AjaxResult getCostInfo(@RequestBody String personid) {
        CostOutpatientInfo costOutpatientInfo = icois.selectByPersonid(personid);
        Boolean flag = false;
        if (null != costOutpatientInfo) {
            flag = true;
        }
        return AjaxResult.success(flag);
    }
}
