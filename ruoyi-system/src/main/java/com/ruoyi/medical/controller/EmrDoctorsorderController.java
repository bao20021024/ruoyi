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
import com.ruoyi.medical.domain.EmrDoctorsorder;
import com.ruoyi.medical.service.IEmrDoctorsorderService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医嘱记录Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/doctorsorder")
public class EmrDoctorsorderController extends BaseController
{
    @Autowired
    private IEmrDoctorsorderService emrDoctorsorderService;

    /**
     * 查询医嘱记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorder:list')")
    @GetMapping("/list")
    public TableDataInfo list(EmrDoctorsorder emrDoctorsorder)
    {
        startPage();
        List<EmrDoctorsorder> list = emrDoctorsorderService.selectEmrDoctorsorderList(emrDoctorsorder);
        return getDataTable(list);
    }

    /**
     * 导出医嘱记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorder:export')")
    @Log(title = "医嘱记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(EmrDoctorsorder emrDoctorsorder)
    {
        List<EmrDoctorsorder> list = emrDoctorsorderService.selectEmrDoctorsorderList(emrDoctorsorder);
        ExcelUtil<EmrDoctorsorder> util = new ExcelUtil<EmrDoctorsorder>(EmrDoctorsorder.class);
        return util.exportExcel(list, "医嘱记录数据");
    }

    /**
     * 获取医嘱记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorder:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(emrDoctorsorderService.selectEmrDoctorsorderById(id));
    }

    /**
     * 新增医嘱记录
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorder:add')")
    @Log(title = "医嘱记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody EmrDoctorsorder emrDoctorsorder)
    {
        return toAjax(emrDoctorsorderService.insertEmrDoctorsorder(emrDoctorsorder));
    }

    /**
     * 修改医嘱记录
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorder:edit')")
    @Log(title = "医嘱记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody EmrDoctorsorder emrDoctorsorder)
    {
        return toAjax(emrDoctorsorderService.updateEmrDoctorsorder(emrDoctorsorder));
    }

    /**
     * 删除医嘱记录
     */
    @PreAuthorize("@ss.hasPermi('medical:doctorsorder:remove')")
    @Log(title = "医嘱记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(emrDoctorsorderService.deleteEmrDoctorsorderByIds(ids));
    }
}
