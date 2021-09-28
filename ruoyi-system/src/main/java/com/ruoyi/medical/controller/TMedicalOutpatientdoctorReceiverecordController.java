package com.ruoyi.medical.controller;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
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
import com.ruoyi.medical.domain.TMedicalOutpatientdoctorReceiverecord;
import com.ruoyi.medical.service.ITMedicalOutpatientdoctorReceiverecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 接诊记录Controller
 *
 * @author bao
 * @date 2021-09-26
 */
@RestController
@RequestMapping("/medical/receiverecord")
public class TMedicalOutpatientdoctorReceiverecordController extends BaseController {
    @Autowired
    private ITMedicalOutpatientdoctorReceiverecordService tMedicalOutpatientdoctorReceiverecordService;

    /**
     * 查询接诊记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:receiverecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        startPage();
        List<TMedicalOutpatientdoctorReceiverecord> list = tMedicalOutpatientdoctorReceiverecordService.selectTMedicalOutpatientdoctorReceiverecordList(tMedicalOutpatientdoctorReceiverecord);
        return getDataTable(list);
    }

    /**
     * 导出接诊记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:receiverecord:export')")
    @Log(title = "接诊记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        List<TMedicalOutpatientdoctorReceiverecord> list = tMedicalOutpatientdoctorReceiverecordService.selectTMedicalOutpatientdoctorReceiverecordList(tMedicalOutpatientdoctorReceiverecord);
        ExcelUtil<TMedicalOutpatientdoctorReceiverecord> util = new ExcelUtil<TMedicalOutpatientdoctorReceiverecord>(TMedicalOutpatientdoctorReceiverecord.class);
        return util.exportExcel(list, "接诊记录数据");
    }

    /**
     * 获取接诊记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:receiverecord:query')")
    @GetMapping(value = "/{opDoctorReceiveRecordId}")
    public AjaxResult getInfo(@PathVariable("opDoctorReceiveRecordId") String opDoctorReceiveRecordId) {
        return AjaxResult.success(tMedicalOutpatientdoctorReceiverecordService.selectTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(opDoctorReceiveRecordId));
    }

    /**
     * 新增接诊记录
     */
    @PreAuthorize("@ss.hasPermi('medical:receiverecord:add')")
    @Log(title = "接诊记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        String id = MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername());
        tMedicalOutpatientdoctorReceiverecord.setOpDoctorReceiveRecordId(id);
        tMedicalOutpatientdoctorReceiverecord.setStatus(1l);
        return toAjax(tMedicalOutpatientdoctorReceiverecordService.insertTMedicalOutpatientdoctorReceiverecord(tMedicalOutpatientdoctorReceiverecord));
    }

    /**
     * 修改接诊记录
     */
    @PreAuthorize("@ss.hasPermi('medical:receiverecord:edit')")
    @Log(title = "接诊记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        tMedicalOutpatientdoctorReceiverecord.setDoctorId(SecurityUtils.getUserId() + "");
        tMedicalOutpatientdoctorReceiverecord.setCreateTime(new Date());
        return toAjax(tMedicalOutpatientdoctorReceiverecordService.updateTMedicalOutpatientdoctorReceiverecord(tMedicalOutpatientdoctorReceiverecord));
    }

    /**
     * 删除接诊记录
     */
    @PreAuthorize("@ss.hasPermi('medical:receiverecord:remove')")
    @Log(title = "接诊记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{opDoctorReceiveRecordIds}")
    public AjaxResult remove(@PathVariable String[] opDoctorReceiveRecordIds) {
        return toAjax(tMedicalOutpatientdoctorReceiverecordService.deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(opDoctorReceiveRecordIds));
    }

}
