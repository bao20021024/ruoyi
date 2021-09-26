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
import com.ruoyi.medical.domain.OutpatientdoctorAction;
import com.ruoyi.medical.service.IOutpatientdoctorActionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医生看病流程Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/action")
public class OutpatientdoctorActionController extends BaseController
{
    @Autowired
    private IOutpatientdoctorActionService outpatientdoctorActionService;

    /**
     * 查询医生看病流程列表
     */
    @PreAuthorize("@ss.hasPermi('medical:action:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientdoctorAction outpatientdoctorAction)
    {
        startPage();
        List<OutpatientdoctorAction> list = outpatientdoctorActionService.selectOutpatientdoctorActionList(outpatientdoctorAction);
        return getDataTable(list);
    }

    /**
     * 导出医生看病流程列表
     */
    @PreAuthorize("@ss.hasPermi('medical:action:export')")
    @Log(title = "医生看病流程", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(OutpatientdoctorAction outpatientdoctorAction)
    {
        List<OutpatientdoctorAction> list = outpatientdoctorActionService.selectOutpatientdoctorActionList(outpatientdoctorAction);
        ExcelUtil<OutpatientdoctorAction> util = new ExcelUtil<OutpatientdoctorAction>(OutpatientdoctorAction.class);
        return util.exportExcel(list, "医生看病流程数据");
    }

    /**
     * 获取医生看病流程详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:action:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(outpatientdoctorActionService.selectOutpatientdoctorActionById(id));
    }

    /**
     * 新增医生看病流程
     */
    @PreAuthorize("@ss.hasPermi('medical:action:add')")
    @Log(title = "医生看病流程", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientdoctorAction outpatientdoctorAction)
    {
        return toAjax(outpatientdoctorActionService.insertOutpatientdoctorAction(outpatientdoctorAction));
    }

    /**
     * 修改医生看病流程
     */
    @PreAuthorize("@ss.hasPermi('medical:action:edit')")
    @Log(title = "医生看病流程", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientdoctorAction outpatientdoctorAction)
    {
        return toAjax(outpatientdoctorActionService.updateOutpatientdoctorAction(outpatientdoctorAction));
    }

    /**
     * 删除医生看病流程
     */
    @PreAuthorize("@ss.hasPermi('medical:action:remove')")
    @Log(title = "医生看病流程", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(outpatientdoctorActionService.deleteOutpatientdoctorActionByIds(ids));
    }
}
