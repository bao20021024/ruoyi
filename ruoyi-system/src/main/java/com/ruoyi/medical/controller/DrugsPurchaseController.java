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
import com.ruoyi.medical.domain.DrugsPurchase;
import com.ruoyi.medical.service.IDrugsPurchaseService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 药品采购信息Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/purchase")
public class DrugsPurchaseController extends BaseController
{
    @Autowired
    private IDrugsPurchaseService drugsPurchaseService;

    /**
     * 查询药品采购信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:purchase:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrugsPurchase drugsPurchase)
    {
        startPage();
        List<DrugsPurchase> list = drugsPurchaseService.selectDrugsPurchaseList(drugsPurchase);
        return getDataTable(list);
    }

    /**
     * 导出药品采购信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:purchase:export')")
    @Log(title = "药品采购信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(DrugsPurchase drugsPurchase)
    {
        List<DrugsPurchase> list = drugsPurchaseService.selectDrugsPurchaseList(drugsPurchase);
        ExcelUtil<DrugsPurchase> util = new ExcelUtil<DrugsPurchase>(DrugsPurchase.class);
        return util.exportExcel(list, "药品采购信息数据");
    }

    /**
     * 获取药品采购信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:purchase:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(drugsPurchaseService.selectDrugsPurchaseById(id));
    }

    /**
     * 新增药品采购信息
     */
    @PreAuthorize("@ss.hasPermi('medical:purchase:add')")
    @Log(title = "药品采购信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrugsPurchase drugsPurchase)
    {
        return toAjax(drugsPurchaseService.insertDrugsPurchase(drugsPurchase));
    }

    /**
     * 修改药品采购信息
     */
    @PreAuthorize("@ss.hasPermi('medical:purchase:edit')")
    @Log(title = "药品采购信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrugsPurchase drugsPurchase)
    {
        return toAjax(drugsPurchaseService.updateDrugsPurchase(drugsPurchase));
    }

    /**
     * 删除药品采购信息
     */
    @PreAuthorize("@ss.hasPermi('medical:purchase:remove')")
    @Log(title = "药品采购信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(drugsPurchaseService.deleteDrugsPurchaseByIds(ids));
    }
}
