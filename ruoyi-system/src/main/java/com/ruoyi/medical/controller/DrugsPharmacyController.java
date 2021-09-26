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
import com.ruoyi.medical.domain.DrugsPharmacy;
import com.ruoyi.medical.service.IDrugsPharmacyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 药房库存Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/pharmacy")
public class DrugsPharmacyController extends BaseController
{
    @Autowired
    private IDrugsPharmacyService drugsPharmacyService;

    /**
     * 查询药房库存列表
     */
    @PreAuthorize("@ss.hasPermi('medical:pharmacy:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrugsPharmacy drugsPharmacy)
    {
        startPage();
        List<DrugsPharmacy> list = drugsPharmacyService.selectDrugsPharmacyList(drugsPharmacy);
        return getDataTable(list);
    }

    /**
     * 导出药房库存列表
     */
    @PreAuthorize("@ss.hasPermi('medical:pharmacy:export')")
    @Log(title = "药房库存", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(DrugsPharmacy drugsPharmacy)
    {
        List<DrugsPharmacy> list = drugsPharmacyService.selectDrugsPharmacyList(drugsPharmacy);
        ExcelUtil<DrugsPharmacy> util = new ExcelUtil<DrugsPharmacy>(DrugsPharmacy.class);
        return util.exportExcel(list, "药房库存数据");
    }

    /**
     * 获取药房库存详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:pharmacy:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(drugsPharmacyService.selectDrugsPharmacyById(id));
    }

    /**
     * 新增药房库存
     */
    @PreAuthorize("@ss.hasPermi('medical:pharmacy:add')")
    @Log(title = "药房库存", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrugsPharmacy drugsPharmacy)
    {
        return toAjax(drugsPharmacyService.insertDrugsPharmacy(drugsPharmacy));
    }

    /**
     * 修改药房库存
     */
    @PreAuthorize("@ss.hasPermi('medical:pharmacy:edit')")
    @Log(title = "药房库存", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrugsPharmacy drugsPharmacy)
    {
        return toAjax(drugsPharmacyService.updateDrugsPharmacy(drugsPharmacy));
    }

    /**
     * 删除药房库存
     */
    @PreAuthorize("@ss.hasPermi('medical:pharmacy:remove')")
    @Log(title = "药房库存", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(drugsPharmacyService.deleteDrugsPharmacyByIds(ids));
    }
}
