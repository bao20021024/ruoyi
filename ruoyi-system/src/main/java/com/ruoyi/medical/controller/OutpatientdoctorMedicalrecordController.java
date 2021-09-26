package com.ruoyi.medical.controller;

import java.util.List;
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
import com.ruoyi.medical.domain.OutpatientdoctorMedicalrecord;
import com.ruoyi.medical.service.IOutpatientdoctorMedicalrecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 门诊病历Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/medicalrecord")
public class OutpatientdoctorMedicalrecordController extends BaseController
{
    @Autowired
    private IOutpatientdoctorMedicalrecordService outpatientdoctorMedicalrecordService;

    /**
     * 查询门诊病历列表
     */
    @PreAuthorize("@ss.hasPermi('medical:medicalrecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        startPage();
        List<OutpatientdoctorMedicalrecord> list = outpatientdoctorMedicalrecordService.selectOutpatientdoctorMedicalrecordList(outpatientdoctorMedicalrecord);
        return getDataTable(list);
    }

    /**
     * 导出门诊病历列表
     */
    @PreAuthorize("@ss.hasPermi('medical:medicalrecord:export')")
    @Log(title = "门诊病历", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        List<OutpatientdoctorMedicalrecord> list = outpatientdoctorMedicalrecordService.selectOutpatientdoctorMedicalrecordList(outpatientdoctorMedicalrecord);
        ExcelUtil<OutpatientdoctorMedicalrecord> util = new ExcelUtil<OutpatientdoctorMedicalrecord>(OutpatientdoctorMedicalrecord.class);
        return util.exportExcel(list, "门诊病历数据");
    }

    /**
     * 获取门诊病历详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:medicalrecord:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(outpatientdoctorMedicalrecordService.selectOutpatientdoctorMedicalrecordById(id));
    }

    /**
     * 新增门诊病历
     */
    @PreAuthorize("@ss.hasPermi('medical:medicalrecord:add')")
    @Log(title = "门诊病历", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        return toAjax(outpatientdoctorMedicalrecordService.insertOutpatientdoctorMedicalrecord(outpatientdoctorMedicalrecord));
    }

    /**
     * 修改门诊病历
     */
    @PreAuthorize("@ss.hasPermi('medical:medicalrecord:edit')")
    @Log(title = "门诊病历", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        return toAjax(outpatientdoctorMedicalrecordService.updateOutpatientdoctorMedicalrecord(outpatientdoctorMedicalrecord));
    }

    /**
     * 删除门诊病历
     */
    @PreAuthorize("@ss.hasPermi('medical:medicalrecord:remove')")
    @Log(title = "门诊病历", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(outpatientdoctorMedicalrecordService.deleteOutpatientdoctorMedicalrecordByIds(ids));
    }
}
