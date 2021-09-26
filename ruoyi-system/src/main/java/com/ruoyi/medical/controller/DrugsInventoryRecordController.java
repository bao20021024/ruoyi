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
import com.ruoyi.medical.domain.DrugsInventoryRecord;
import com.ruoyi.medical.service.IDrugsInventoryRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 盘点记录Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/inventory")
public class DrugsInventoryRecordController extends BaseController
{
    @Autowired
    private IDrugsInventoryRecordService drugsInventoryRecordService;

    /**
     * 查询盘点记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:inventory:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrugsInventoryRecord drugsInventoryRecord)
    {
        startPage();
        List<DrugsInventoryRecord> list = drugsInventoryRecordService.selectDrugsInventoryRecordList(drugsInventoryRecord);
        return getDataTable(list);
    }

    /**
     * 导出盘点记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:inventory:export')")
    @Log(title = "盘点记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(DrugsInventoryRecord drugsInventoryRecord)
    {
        List<DrugsInventoryRecord> list = drugsInventoryRecordService.selectDrugsInventoryRecordList(drugsInventoryRecord);
        ExcelUtil<DrugsInventoryRecord> util = new ExcelUtil<DrugsInventoryRecord>(DrugsInventoryRecord.class);
        return util.exportExcel(list, "盘点记录数据");
    }

    /**
     * 获取盘点记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:inventory:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(drugsInventoryRecordService.selectDrugsInventoryRecordById(id));
    }

    /**
     * 新增盘点记录
     */
    @PreAuthorize("@ss.hasPermi('medical:inventory:add')")
    @Log(title = "盘点记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrugsInventoryRecord drugsInventoryRecord)
    {
        return toAjax(drugsInventoryRecordService.insertDrugsInventoryRecord(drugsInventoryRecord));
    }

    /**
     * 修改盘点记录
     */
    @PreAuthorize("@ss.hasPermi('medical:inventory:edit')")
    @Log(title = "盘点记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrugsInventoryRecord drugsInventoryRecord)
    {
        return toAjax(drugsInventoryRecordService.updateDrugsInventoryRecord(drugsInventoryRecord));
    }

    /**
     * 删除盘点记录
     */
    @PreAuthorize("@ss.hasPermi('medical:inventory:remove')")
    @Log(title = "盘点记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(drugsInventoryRecordService.deleteDrugsInventoryRecordByIds(ids));
    }
}
