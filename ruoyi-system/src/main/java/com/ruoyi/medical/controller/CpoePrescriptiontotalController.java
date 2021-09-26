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
import com.ruoyi.medical.domain.CpoePrescriptiontotal;
import com.ruoyi.medical.service.ICpoePrescriptiontotalService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 住院治疗处方总Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/prescriptiontotal")
public class CpoePrescriptiontotalController extends BaseController
{
    @Autowired
    private ICpoePrescriptiontotalService cpoePrescriptiontotalService;

    /**
     * 查询住院治疗处方总列表
     */
    @PreAuthorize("@ss.hasPermi('medical:prescriptiontotal:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        startPage();
        List<CpoePrescriptiontotal> list = cpoePrescriptiontotalService.selectCpoePrescriptiontotalList(cpoePrescriptiontotal);
        return getDataTable(list);
    }

    /**
     * 导出住院治疗处方总列表
     */
    @PreAuthorize("@ss.hasPermi('medical:prescriptiontotal:export')")
    @Log(title = "住院治疗处方总", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        List<CpoePrescriptiontotal> list = cpoePrescriptiontotalService.selectCpoePrescriptiontotalList(cpoePrescriptiontotal);
        ExcelUtil<CpoePrescriptiontotal> util = new ExcelUtil<CpoePrescriptiontotal>(CpoePrescriptiontotal.class);
        return util.exportExcel(list, "住院治疗处方总数据");
    }

    /**
     * 获取住院治疗处方总详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:prescriptiontotal:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(cpoePrescriptiontotalService.selectCpoePrescriptiontotalById(id));
    }

    /**
     * 新增住院治疗处方总
     */
    @PreAuthorize("@ss.hasPermi('medical:prescriptiontotal:add')")
    @Log(title = "住院治疗处方总", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        return toAjax(cpoePrescriptiontotalService.insertCpoePrescriptiontotal(cpoePrescriptiontotal));
    }

    /**
     * 修改住院治疗处方总
     */
    @PreAuthorize("@ss.hasPermi('medical:prescriptiontotal:edit')")
    @Log(title = "住院治疗处方总", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        return toAjax(cpoePrescriptiontotalService.updateCpoePrescriptiontotal(cpoePrescriptiontotal));
    }

    /**
     * 删除住院治疗处方总
     */
    @PreAuthorize("@ss.hasPermi('medical:prescriptiontotal:remove')")
    @Log(title = "住院治疗处方总", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(cpoePrescriptiontotalService.deleteCpoePrescriptiontotalByIds(ids));
    }
}
