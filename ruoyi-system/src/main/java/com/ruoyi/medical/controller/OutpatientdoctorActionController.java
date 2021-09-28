package com.ruoyi.medical.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.medical.domain.*;
import com.ruoyi.medical.modle.LisAndPacs;
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
 * 医生看病流程Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/action")
public class OutpatientdoctorActionController extends BaseController {
    @Autowired
    private IOutpatientdoctorActionService outpatientdoctorActionService;

    @Autowired
    private ILisInfoService ilis;

    @Autowired
    private IPacsInfoService ipis;

    @Autowired
    private ITMedicalOutpatientdoctorReceiverecordService itmors;

    @Autowired
    private IEmrDoctorsorderService ieds;


    /**
     * 查询医生看病流程列表
     */
    @PreAuthorize("@ss.hasPermi('medical:action:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientdoctorAction outpatientdoctorAction) {
        startPage();
        List<OutpatientdoctorAction> list = outpatientdoctorActionService.selectOutpatientdoctorActionList(outpatientdoctorAction);
        return getDataTable(list);
    }

    /**
     * 导出医生看病流程列表
     */
    @PreAuthorize("@ss.hasPermi('medical:action:export')")
    @Log(title = "医生看病流程", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(OutpatientdoctorAction outpatientdoctorAction) {
        List<OutpatientdoctorAction> list = outpatientdoctorActionService.selectOutpatientdoctorActionList(outpatientdoctorAction);
        ExcelUtil<OutpatientdoctorAction> util = new ExcelUtil<OutpatientdoctorAction>(OutpatientdoctorAction.class);
        return util.exportExcel(list, "医生看病流程数据");
    }

    /**
     * 获取医生看病流程详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:action:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(outpatientdoctorActionService.selectOutpatientdoctorActionById(id));
    }

    /**
     * 新增医生看病流程
     */
    @PreAuthorize("@ss.hasPermi('medical:action:add')")
    @Log(title = "医生看病流程", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientdoctorAction outpatientdoctorAction) {
        int code = 0;

        String personid = outpatientdoctorAction.getTmor().getCoi().getPersonid();
        Long partNumber = outpatientdoctorAction.getPartNumber();
        String opDoctorReceiveRecordId = outpatientdoctorAction.getOpDoctorReceiveRecordId();

        String username = SecurityUtils.getUsername();
        String userId = SecurityUtils.getUserId() + "";
        Date d = new Date();
        String id = MyIdGenUtils.ByPinyinAndTimestamp(username);
        String partName = outpatientdoctorAction.getPartName();
        String type = partName.substring(0, 1);

        outpatientdoctorAction.setId(id);

        if ("1".equals(type)) {
            outpatientdoctorAction.setType(1l);
            if ("1001".equals(partName)) {
                outpatientdoctorAction.setPartMoney(50f);
            } else if ("1002".equals(partName)) {
                outpatientdoctorAction.setPartMoney(20f);
            }

            LisInfo li = new LisInfo();
            li.setName(partName);
            li.setPersonId(personid);
            li.setDoctorid(userId);
            li.setCreateTime(d);
            li.setStatus(1l);
            li.setReceiveRecordId(opDoctorReceiveRecordId);

            EmrDoctorsorder ed = new EmrDoctorsorder();
            ed.setPersonId(personid);
            ed.setDoctorId(userId);
            ed.setStatus(2l);
            ed.setType(2l);
            ed.setDescription(partName);
            ed.setCreateTime(d);

            for (int i = 0; i < partNumber; i++) {
                id = MyIdGenUtils.ByPinyinAndTimestamp(username);
                li.setId(id);
                ed.setId(id);

                code = ilis.insertLisInfo(li);

                if (code > 0) {
                    code = ieds.insertEmrDoctorsorder(ed);
                }
            }

        } else if ("2".equals(type)) {
            outpatientdoctorAction.setType(2l);
            if ("2001".equals(partName)) {
                outpatientdoctorAction.setPartMoney(70f);
            } else if ("2002".equals(partName)) {
                outpatientdoctorAction.setPartMoney(100f);
            }

            PacsInfo pi = new PacsInfo();
            pi.setName(partName);
            pi.setPersonId(personid);
            pi.setDoctorid(userId);
            pi.setCreateTime(d);
            pi.setStatus(1l);
            pi.setReceiveRecordId(opDoctorReceiveRecordId);

            EmrDoctorsorder ed = new EmrDoctorsorder();
            ed.setPersonId(personid);
            ed.setDoctorId(userId);
            ed.setStatus(2l);
            ed.setType(2l);
            ed.setDescription(partName);
            ed.setCreateTime(d);

            for (int i = 0; i < partNumber; i++) {
                id = MyIdGenUtils.ByPinyinAndTimestamp(username);
                pi.setId(id);
                ed.setId(id);

                code = ipis.insertPacsInfo(pi);

                if (code > 0) {
                    code = ieds.insertEmrDoctorsorder(ed);
                }

            }

        }

        code = outpatientdoctorActionService.insertOutpatientdoctorAction(outpatientdoctorAction);

        if (code > 0) {
            TMedicalOutpatientdoctorReceiverecord tmor = new TMedicalOutpatientdoctorReceiverecord();
            tmor.setOpDoctorReceiveRecordId(outpatientdoctorAction.getOpDoctorReceiveRecordId());
            tmor.setStatus(3l);
            code = itmors.updateTMedicalOutpatientdoctorReceiverecord(tmor);
        }

        return toAjax(code);
    }

    /**
     * 修改医生看病流程
     */
    @PreAuthorize("@ss.hasPermi('medical:action:edit')")
    @Log(title = "医生看病流程", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientdoctorAction outpatientdoctorAction) {
        return toAjax(outpatientdoctorActionService.updateOutpatientdoctorAction(outpatientdoctorAction));
    }

    /**
     * 删除医生看病流程
     */
    @PreAuthorize("@ss.hasPermi('medical:action:remove')")
    @Log(title = "医生看病流程", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(outpatientdoctorActionService.deleteOutpatientdoctorActionByIds(ids));
    }

    /**
     * 检查详情
     */
    @PreAuthorize("@ss.hasPermi('medical:action:list')")
    @PostMapping("/jian")
    public TableDataInfo jian(@RequestBody String id) {
        List<LisAndPacs> ls = ilis.selByReceiveRecordId(id);

        List<LisAndPacs> ps = ipis.selByReceiveRecordId(id);

        List<LisAndPacs> list = new ArrayList<>();
        list.addAll(ls);
        list.addAll(ps);

        return getDataTable(list);
    }
}
