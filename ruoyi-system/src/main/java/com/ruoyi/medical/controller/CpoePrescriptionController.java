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
import com.ruoyi.medical.domain.CpoePrescription;
import com.ruoyi.medical.service.ICpoePrescriptionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 住院治疗处方Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/prescription")
public class CpoePrescriptionController extends BaseController
{
    @Autowired
    private ICpoePrescriptionService cpoePrescriptionService;

    /**
     * 查询住院治疗处方列表
     */
    @PreAuthorize("@ss.hasPermi('medical:prescription:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoePrescription cpoePrescription)
    {
        startPage();
        List<CpoePrescription> list = cpoePrescriptionService.selectCpoePrescriptionList(cpoePrescription);
        return getDataTable(list);
    }

    /**
     * 导出住院治疗处方列表
     */
    @PreAuthorize("@ss.hasPermi('medical:prescription:export')")
    @Log(title = "住院治疗处方", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoePrescription cpoePrescription)
    {
        List<CpoePrescription> list = cpoePrescriptionService.selectCpoePrescriptionList(cpoePrescription);
        ExcelUtil<CpoePrescription> util = new ExcelUtil<CpoePrescription>(CpoePrescription.class);
        return util.exportExcel(list, "住院治疗处方数据");
    }

    /**
     * 获取住院治疗处方详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:prescription:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(cpoePrescriptionService.selectCpoePrescriptionById(id));
    }

    /**
     * 新增住院治疗处方
     */
    @PreAuthorize("@ss.hasPermi('medical:prescription:add')")
    @Log(title = "住院治疗处方", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoePrescription cpoePrescription)
    {
        return toAjax(cpoePrescriptionService.insertCpoePrescription(cpoePrescription));
    }

    /**
     * 修改住院治疗处方
     */
    @PreAuthorize("@ss.hasPermi('medical:prescription:edit')")
    @Log(title = "住院治疗处方", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoePrescription cpoePrescription)
    {
        return toAjax(cpoePrescriptionService.updateCpoePrescription(cpoePrescription));
    }

    /**
     * 删除住院治疗处方
     */
    @PreAuthorize("@ss.hasPermi('medical:prescription:remove')")
    @Log(title = "住院治疗处方", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(cpoePrescriptionService.deleteCpoePrescriptionByIds(ids));
    }
}
