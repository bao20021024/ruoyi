package com.ruoyi.medical.controller;

import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.util.MyIdGenUtils;
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
import com.ruoyi.medical.domain.CpoeSickroomDuty;
import com.ruoyi.medical.service.ICpoeSickroomDutyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 病房值班记录Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/duty")
public class CpoeSickroomDutyController extends BaseController
{
    @Autowired
    private ICpoeSickroomDutyService cpoeSickroomDutyService;

    /**
     * 查询病房值班记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:duty:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoeSickroomDuty cpoeSickroomDuty)
    {
        startPage();
        List<CpoeSickroomDuty> list = cpoeSickroomDutyService.selectCpoeSickroomDutyList(cpoeSickroomDuty);
        return getDataTable(list);
    }

    /**
     * 导出病房值班记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:duty:export')")
    @Log(title = "病房值班记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoeSickroomDuty cpoeSickroomDuty)
    {
        List<CpoeSickroomDuty> list = cpoeSickroomDutyService.selectCpoeSickroomDutyList(cpoeSickroomDuty);
        ExcelUtil<CpoeSickroomDuty> util = new ExcelUtil<CpoeSickroomDuty>(CpoeSickroomDuty.class);
        return util.exportExcel(list, "病房值班记录数据");
    }

    /**
     * 获取病房值班记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:duty:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(cpoeSickroomDutyService.selectCpoeSickroomDutyById(id));
    }

    /**
     * 新增病房值班记录
     */
    @PreAuthorize("@ss.hasPermi('medical:duty:add')")
    @Log(title = "病房值班记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoeSickroomDuty cpoeSickroomDuty)
    {
        String id = MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername());
        cpoeSickroomDuty.setId(id);
        return toAjax(cpoeSickroomDutyService.insertCpoeSickroomDuty(cpoeSickroomDuty));
    }

    /**
     * 修改病房值班记录
     */
    @PreAuthorize("@ss.hasPermi('medical:duty:edit')")
    @Log(title = "病房值班记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoeSickroomDuty cpoeSickroomDuty)
    {
        return toAjax(cpoeSickroomDutyService.updateCpoeSickroomDuty(cpoeSickroomDuty));
    }

    /**
     * 删除病房值班记录
     */
    @PreAuthorize("@ss.hasPermi('medical:duty:remove')")
    @Log(title = "病房值班记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(cpoeSickroomDutyService.deleteCpoeSickroomDutyByIds(ids));
    }
}
