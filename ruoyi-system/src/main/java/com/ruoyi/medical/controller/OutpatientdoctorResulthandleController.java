package com.ruoyi.medical.controller;

import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.medical.domain.*;
import com.ruoyi.medical.service.*;
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
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医生看病治疗方案Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/resulthandle")
public class OutpatientdoctorResulthandleController extends BaseController {
    @Autowired
    private IOutpatientdoctorResulthandleService outpatientdoctorResulthandleService;

    @Autowired
    private IOutpatientdoctorResultService irs;

    @Autowired
    private ITMedicalOutpatientdoctorReceiverecordService itors;

    @Autowired
    private IOutpatientdoctorActionService ioas;

    @Autowired
    private ICostBillService icbs;

    @Autowired
    private ICostBillDetailService icbds;

    /**
     * 查询医生看病治疗方案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientdoctorResulthandle outpatientdoctorResulthandle) {
        startPage();
        List<OutpatientdoctorResulthandle> list = outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleList(outpatientdoctorResulthandle);
        return getDataTable(list);
    }

    /**
     * 查询医生看病治疗方案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:list')")
    @PostMapping("/getList")
    public TableDataInfo getList(@RequestBody String id) {
        OutpatientdoctorResulthandle outpatientdoctorResulthandle = new OutpatientdoctorResulthandle();
        outpatientdoctorResulthandle.setOpDoctorResultId(id);
        List<OutpatientdoctorResulthandle> list = outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleList(outpatientdoctorResulthandle);
        return getDataTable(list);
    }

    /**
     * 导出医生看病治疗方案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:export')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(OutpatientdoctorResulthandle outpatientdoctorResulthandle) {
        List<OutpatientdoctorResulthandle> list = outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleList(outpatientdoctorResulthandle);
        ExcelUtil<OutpatientdoctorResulthandle> util = new ExcelUtil<OutpatientdoctorResulthandle>(OutpatientdoctorResulthandle.class);
        return util.exportExcel(list, "医生看病治疗方案数据");
    }

    /**
     * 获取医生看病治疗方案详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleById(id));
    }

    /**
     * 新增医生看病治疗方案
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:add')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientdoctorResulthandle outpatientdoctorResulthandle) {
        int code = 0;
        outpatientdoctorResulthandle.setId(MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername()));

        OutpatientdoctorResult or = irs.selectOutpatientdoctorResultByOpDoctorResultId(outpatientdoctorResulthandle.getOpDoctorResultId());

        TMedicalOutpatientdoctorReceiverecord tmor = new TMedicalOutpatientdoctorReceiverecord();
        tmor.setOpDoctorReceiveRecordId(or.getOpDoctorReceiveRecordId());
        tmor.setStatus(6l);

        itors.updateTMedicalOutpatientdoctorReceiverecord(tmor);

        List<OutpatientdoctorResulthandle> ors = outpatientdoctorResulthandleService.selectByOpDoctorResultId(outpatientdoctorResulthandle.getOpDoctorResultId());
        boolean flag = true;
        Long num = 0l;
        String id = "";
        for (OutpatientdoctorResulthandle o : ors) {
            if (o.getDrugsId().equals(outpatientdoctorResulthandle.getDrugsId())) {
                id = o.getId();
                num = o.getPartNumber();
                flag = false;
                break;
            }
        }

        if (flag) {
            code = outpatientdoctorResulthandleService.insertOutpatientdoctorResulthandle(outpatientdoctorResulthandle);
        } else {
            OutpatientdoctorResulthandle orh = new OutpatientdoctorResulthandle();
            orh.setId(id);
            orh.setPartNumber(outpatientdoctorResulthandle.getPartNumber() + num);
            code = outpatientdoctorResulthandleService.updateOutpatientdoctorResulthandle(orh);
        }

        return toAjax(code);
    }

    /**
     * 修改医生看病治疗方案
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:edit')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientdoctorResulthandle outpatientdoctorResulthandle) {
        return toAjax(outpatientdoctorResulthandleService.updateOutpatientdoctorResulthandle(outpatientdoctorResulthandle));
    }

    /**
     * 删除医生看病治疗方案
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:remove')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(outpatientdoctorResulthandleService.deleteOutpatientdoctorResulthandleByIds(ids));
    }

    /**
     * 开药完毕
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:edit')")
    @PostMapping("/wan")
    public AjaxResult wan(@RequestBody String odrId) {
        int code = 0;
        String username = SecurityUtils.getUsername();

        OutpatientdoctorResult or = irs.selectOutpatientdoctorResultByOpDoctorResultId(odrId);
        TMedicalOutpatientdoctorReceiverecord tmor = itors.selectTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(or.getOpDoctorReceiveRecordId());
        String outpatientId = tmor.getOutpatientId();

        CostBill cb = new CostBill();
        String cbId = MyIdGenUtils.ByPinyinAndTimestamp(username);
        cb.setId(cbId);
        cb.setOutpatientId(outpatientId);
        cb.setStatus(1);

        CostBillDetail cbd = new CostBillDetail();
        cbd.setBillid(cbId);

        List<OutpatientdoctorResulthandle> ors = outpatientdoctorResulthandleService.selectByOpDoctorResultId(odrId);

        for (OutpatientdoctorResulthandle o : ors) {
            String id = MyIdGenUtils.ByPinyinAndTimestamp(username);
            cbd.setId(id);
            cbd.setPartName(o.getDi().getName());
            cbd.setPartNumber(o.getPartNumber());
            cbd.setType(4l);
            cbd.setPartMoney(o.getDi().getMoney());

            code = icbds.insertCostBillDetail(cbd);
        }

        List<OutpatientdoctorAction> oas = ioas.selectByOpDoctorReceiveRecordId(tmor.getOpDoctorReceiveRecordId());

        for (OutpatientdoctorAction o : oas) {
            String id = MyIdGenUtils.ByPinyinAndTimestamp(username);
            cbd.setId(id);
            cbd.setPartName(o.getPartName());
            cbd.setPartNumber(o.getPartNumber());
            cbd.setType(o.getType());
            cbd.setPartMoney(o.getPartMoney());

            code = icbds.insertCostBillDetail(cbd);
        }

        List<CostBillDetail> cbds = icbds.selectByBillid(cbId);
        Float money = 0f;
        for (CostBillDetail o : cbds) {
            Float partMoney = o.getPartMoney();
            Long partNumber = o.getPartNumber();
            Float part = partMoney * partNumber;
            money += part;
        }

        cb.setMoney(money);

        code = icbs.insertCostBill(cb);

        TMedicalOutpatientdoctorReceiverecord t = new TMedicalOutpatientdoctorReceiverecord();
        t.setOpDoctorReceiveRecordId(tmor.getOpDoctorReceiveRecordId());
        t.setStatus(7l);

        code = itors.updateTMedicalOutpatientdoctorReceiverecord(t);

        return toAjax(code);
    }
}
