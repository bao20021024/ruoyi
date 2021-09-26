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
import com.ruoyi.medical.domain.TMedicalDo;
import com.ruoyi.medical.service.ITMedicalDoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 操作记录Controller
 * 
 * @author bao
 * @date 2021-09-24
 */
@RestController
@RequestMapping("/medical/do")
public class TMedicalDoController extends BaseController
{
    @Autowired
    private ITMedicalDoService tMedicalDoService;

    /**
     * 查询操作记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:do:list')")
    @GetMapping("/list")
    public TableDataInfo list(TMedicalDo tMedicalDo)
    {
        startPage();
        List<TMedicalDo> list = tMedicalDoService.selectTMedicalDoList(tMedicalDo);
        return getDataTable(list);
    }

    /**
     * 导出操作记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:do:export')")
    @Log(title = "操作记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(TMedicalDo tMedicalDo)
    {
        List<TMedicalDo> list = tMedicalDoService.selectTMedicalDoList(tMedicalDo);
        ExcelUtil<TMedicalDo> util = new ExcelUtil<TMedicalDo>(TMedicalDo.class);
        return util.exportExcel(list, "操作记录数据");
    }

    /**
     * 获取操作记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:do:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(tMedicalDoService.selectTMedicalDoById(id));
    }

    /**
     * 新增操作记录
     */
    @PreAuthorize("@ss.hasPermi('medical:do:add')")
    @Log(title = "操作记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TMedicalDo tMedicalDo)
    {
        return toAjax(tMedicalDoService.insertTMedicalDo(tMedicalDo));
    }

    /**
     * 修改操作记录
     */
    @PreAuthorize("@ss.hasPermi('medical:do:edit')")
    @Log(title = "操作记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TMedicalDo tMedicalDo)
    {
        return toAjax(tMedicalDoService.updateTMedicalDo(tMedicalDo));
    }

    /**
     * 删除操作记录
     */
    @PreAuthorize("@ss.hasPermi('medical:do:remove')")
    @Log(title = "操作记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(tMedicalDoService.deleteTMedicalDoByIds(ids));
    }
}
