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
import com.ruoyi.medical.domain.OutpatientdoctorResulthandle;
import com.ruoyi.medical.service.IOutpatientdoctorResulthandleService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医生看病治疗方案Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/resulthandle")
public class OutpatientdoctorResulthandleController extends BaseController
{
    @Autowired
    private IOutpatientdoctorResulthandleService outpatientdoctorResulthandleService;

    /**
     * 查询医生看病治疗方案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        startPage();
        List<OutpatientdoctorResulthandle> list = outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleList(outpatientdoctorResulthandle);
        return getDataTable(list);
    }

    /**
     * 导出医生看病治疗方案列表
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:export')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        List<OutpatientdoctorResulthandle> list = outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleList(outpatientdoctorResulthandle);
        ExcelUtil<OutpatientdoctorResulthandle> util = new ExcelUtil<OutpatientdoctorResulthandle>(OutpatientdoctorResulthandle.class);
        return util.exportExcel(list, "医生看病治疗方案数据");
    }

    /**
     * 获取医生看病治疗方案详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(outpatientdoctorResulthandleService.selectOutpatientdoctorResulthandleById(id));
    }

    /**
     * 新增医生看病治疗方案
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:add')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        return toAjax(outpatientdoctorResulthandleService.insertOutpatientdoctorResulthandle(outpatientdoctorResulthandle));
    }

    /**
     * 修改医生看病治疗方案
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:edit')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        return toAjax(outpatientdoctorResulthandleService.updateOutpatientdoctorResulthandle(outpatientdoctorResulthandle));
    }

    /**
     * 删除医生看病治疗方案
     */
    @PreAuthorize("@ss.hasPermi('medical:resulthandle:remove')")
    @Log(title = "医生看病治疗方案", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(outpatientdoctorResulthandleService.deleteOutpatientdoctorResulthandleByIds(ids));
    }
}
