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
import com.ruoyi.medical.domain.CpoeDoctorsorderhandle;
import com.ruoyi.medical.service.ICpoeDoctorsorderhandleService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医嘱执行记录Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/doctorsorderhandle")
public class CpoeDoctorsorderhandleController extends BaseController
{
    @Autowired
    private ICpoeDoctorsorderhandleService cpoeDoctorsorderhandleService;

    /**
     * 查询医嘱执行记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorderhandle:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        startPage();
        List<CpoeDoctorsorderhandle> list = cpoeDoctorsorderhandleService.selectCpoeDoctorsorderhandleList(cpoeDoctorsorderhandle);
        return getDataTable(list);
    }

    /**
     * 导出医嘱执行记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorderhandle:export')")
    @Log(title = "医嘱执行记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        List<CpoeDoctorsorderhandle> list = cpoeDoctorsorderhandleService.selectCpoeDoctorsorderhandleList(cpoeDoctorsorderhandle);
        ExcelUtil<CpoeDoctorsorderhandle> util = new ExcelUtil<CpoeDoctorsorderhandle>(CpoeDoctorsorderhandle.class);
        return util.exportExcel(list, "医嘱执行记录数据");
    }

    /**
     * 获取医嘱执行记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorderhandle:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(cpoeDoctorsorderhandleService.selectCpoeDoctorsorderhandleById(id));
    }

    /**
     * 新增医嘱执行记录
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorderhandle:add')")
    @Log(title = "医嘱执行记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        return toAjax(cpoeDoctorsorderhandleService.insertCpoeDoctorsorderhandle(cpoeDoctorsorderhandle));
    }

    /**
     * 修改医嘱执行记录
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorderhandle:edit')")
    @Log(title = "医嘱执行记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        return toAjax(cpoeDoctorsorderhandleService.updateCpoeDoctorsorderhandle(cpoeDoctorsorderhandle));
    }

    /**
     * 删除医嘱执行记录
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorderhandle:remove')")
    @Log(title = "医嘱执行记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(cpoeDoctorsorderhandleService.deleteCpoeDoctorsorderhandleByIds(ids));
    }
}
