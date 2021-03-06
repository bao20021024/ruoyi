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
import com.ruoyi.medical.domain.OutpatientdoctorResult;
import com.ruoyi.medical.service.IOutpatientdoctorResultService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医生看病结果Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/result")
public class OutpatientdoctorResultController extends BaseController
{
    @Autowired
    private IOutpatientdoctorResultService outpatientdoctorResultService;

    /**
     * 查询医生看病结果列表
     */
    @PreAuthorize("@ss.hasPermi('medical:result:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientdoctorResult outpatientdoctorResult)
    {
        startPage();
        List<OutpatientdoctorResult> list = outpatientdoctorResultService.selectOutpatientdoctorResultList(outpatientdoctorResult);
        return getDataTable(list);
    }

    /**
     * 导出医生看病结果列表
     */
    @PreAuthorize("@ss.hasPermi('medical:result:export')")
    @Log(title = "医生看病结果", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(OutpatientdoctorResult outpatientdoctorResult)
    {
        List<OutpatientdoctorResult> list = outpatientdoctorResultService.selectOutpatientdoctorResultList(outpatientdoctorResult);
        ExcelUtil<OutpatientdoctorResult> util = new ExcelUtil<OutpatientdoctorResult>(OutpatientdoctorResult.class);
        return util.exportExcel(list, "医生看病结果数据");
    }

    /**
     * 获取医生看病结果详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:result:query')")
    @GetMapping(value = "/{opDoctorResultId}")
    public AjaxResult getInfo(@PathVariable("opDoctorResultId") String opDoctorResultId)
    {
        return AjaxResult.success(outpatientdoctorResultService.selectOutpatientdoctorResultByOpDoctorResultId(opDoctorResultId));
    }

    /**
     * 新增医生看病结果
     */
    @PreAuthorize("@ss.hasPermi('medical:result:add')")
    @Log(title = "医生看病结果", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientdoctorResult outpatientdoctorResult)
    {
        return toAjax(outpatientdoctorResultService.insertOutpatientdoctorResult(outpatientdoctorResult));
    }

    /**
     * 修改医生看病结果
     */
    @PreAuthorize("@ss.hasPermi('medical:result:edit')")
    @Log(title = "医生看病结果", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientdoctorResult outpatientdoctorResult)
    {
        return toAjax(outpatientdoctorResultService.updateOutpatientdoctorResult(outpatientdoctorResult));
    }

    /**
     * 删除医生看病结果
     */
    @PreAuthorize("@ss.hasPermi('medical:result:remove')")
    @Log(title = "医生看病结果", businessType = BusinessType.DELETE)
	@DeleteMapping("/{opDoctorResultIds}")
    public AjaxResult remove(@PathVariable String[] opDoctorResultIds)
    {
        return toAjax(outpatientdoctorResultService.deleteOutpatientdoctorResultByOpDoctorResultIds(opDoctorResultIds));
    }
}
