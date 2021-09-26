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
import com.ruoyi.medical.domain.DrugsStorage;
import com.ruoyi.medical.service.IDrugsStorageService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 药库库存Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/storage")
public class DrugsStorageController extends BaseController
{
    @Autowired
    private IDrugsStorageService drugsStorageService;

    /**
     * 查询药库库存列表
     */
    @PreAuthorize("@ss.hasPermi('medical:storage:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrugsStorage drugsStorage)
    {
        startPage();
        List<DrugsStorage> list = drugsStorageService.selectDrugsStorageList(drugsStorage);
        return getDataTable(list);
    }

    /**
     * 导出药库库存列表
     */
    @PreAuthorize("@ss.hasPermi('medical:storage:export')")
    @Log(title = "药库库存", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(DrugsStorage drugsStorage)
    {
        List<DrugsStorage> list = drugsStorageService.selectDrugsStorageList(drugsStorage);
        ExcelUtil<DrugsStorage> util = new ExcelUtil<DrugsStorage>(DrugsStorage.class);
        return util.exportExcel(list, "药库库存数据");
    }

    /**
     * 获取药库库存详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:storage:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(drugsStorageService.selectDrugsStorageById(id));
    }

    /**
     * 新增药库库存
     */
    @PreAuthorize("@ss.hasPermi('medical:storage:add')")
    @Log(title = "药库库存", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrugsStorage drugsStorage)
    {
        return toAjax(drugsStorageService.insertDrugsStorage(drugsStorage));
    }

    /**
     * 修改药库库存
     */
    @PreAuthorize("@ss.hasPermi('medical:storage:edit')")
    @Log(title = "药库库存", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrugsStorage drugsStorage)
    {
        return toAjax(drugsStorageService.updateDrugsStorage(drugsStorage));
    }

    /**
     * 删除药库库存
     */
    @PreAuthorize("@ss.hasPermi('medical:storage:remove')")
    @Log(title = "药库库存", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(drugsStorageService.deleteDrugsStorageByIds(ids));
    }
}
