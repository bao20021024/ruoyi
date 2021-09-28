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
import com.ruoyi.medical.domain.CpoeBed;
import com.ruoyi.medical.service.ICpoeBedService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 床位记录Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/bed")
public class CpoeBedController extends BaseController {
    @Autowired
    private ICpoeBedService cpoeBedService;

    /**
     * 查询床位记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:bed:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoeBed cpoeBed) {
        startPage();
        List<CpoeBed> list = cpoeBedService.selectCpoeBedList(cpoeBed);
        return getDataTable(list);
    }

    /**
     * 导出床位记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:bed:export')")
    @Log(title = "床位记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoeBed cpoeBed) {
        List<CpoeBed> list = cpoeBedService.selectCpoeBedList(cpoeBed);
        ExcelUtil<CpoeBed> util = new ExcelUtil<CpoeBed>(CpoeBed.class);
        return util.exportExcel(list, "床位记录数据");
    }

    /**
     * 获取床位记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:bed:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(cpoeBedService.selectCpoeBedById(id));
    }

    /**
     * 新增床位记录
     */
    @PreAuthorize("@ss.hasPermi('medical:bed:add')")
    @Log(title = "床位记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoeBed cpoeBed) {
        String id = MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername());
        cpoeBed.setId(id);
        return toAjax(cpoeBedService.insertCpoeBed(cpoeBed));
    }

    /**
     * 修改床位记录
     */
    @PreAuthorize("@ss.hasPermi('medical:bed:edit')")
    @Log(title = "床位记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoeBed cpoeBed) {
        return toAjax(cpoeBedService.updateCpoeBed(cpoeBed));
    }

    /**
     * 删除床位记录
     */
    @PreAuthorize("@ss.hasPermi('medical:bed:remove')")
    @Log(title = "床位记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(cpoeBedService.deleteCpoeBedByIds(ids));
    }
}
