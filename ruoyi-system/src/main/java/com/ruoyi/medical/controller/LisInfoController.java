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
import com.ruoyi.medical.domain.LisInfo;
import com.ruoyi.medical.service.ILisInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * Lis检验信息Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/lis")
public class LisInfoController extends BaseController
{
    @Autowired
    private ILisInfoService lisInfoService;

    /**
     * 查询Lis检验信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:lis:list')")
    @GetMapping("/list")
    public TableDataInfo list(LisInfo lisInfo)
    {
        startPage();
        List<LisInfo> list = lisInfoService.selectLisInfoList(lisInfo);
        return getDataTable(list);
    }

    /**
     * 导出Lis检验信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:lis:export')")
    @Log(title = "Lis检验信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(LisInfo lisInfo)
    {
        List<LisInfo> list = lisInfoService.selectLisInfoList(lisInfo);
        ExcelUtil<LisInfo> util = new ExcelUtil<LisInfo>(LisInfo.class);
        return util.exportExcel(list, "Lis检验信息数据");
    }

    /**
     * 获取Lis检验信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:lis:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(lisInfoService.selectLisInfoById(id));
    }

    /**
     * 新增Lis检验信息
     */
    @PreAuthorize("@ss.hasPermi('medical:lis:add')")
    @Log(title = "Lis检验信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody LisInfo lisInfo)
    {
        return toAjax(lisInfoService.insertLisInfo(lisInfo));
    }

    /**
     * 修改Lis检验信息
     */
    @PreAuthorize("@ss.hasPermi('medical:lis:edit')")
    @Log(title = "Lis检验信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody LisInfo lisInfo)
    {
        return toAjax(lisInfoService.updateLisInfo(lisInfo));
    }

    /**
     * 删除Lis检验信息
     */
    @PreAuthorize("@ss.hasPermi('medical:lis:remove')")
    @Log(title = "Lis检验信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(lisInfoService.deleteLisInfoByIds(ids));
    }
}
