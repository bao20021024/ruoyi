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
import com.ruoyi.medical.domain.CostOutpatientRechargeRecord;
import com.ruoyi.medical.service.ICostOutpatientRechargeRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 门诊卡充值记录Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/record")
public class CostOutpatientRechargeRecordController extends BaseController
{
    @Autowired
    private ICostOutpatientRechargeRecordService costOutpatientRechargeRecordService;

    /**
     * 查询门诊卡充值记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:record:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        startPage();
        List<CostOutpatientRechargeRecord> list = costOutpatientRechargeRecordService.selectCostOutpatientRechargeRecordList(costOutpatientRechargeRecord);
        return getDataTable(list);
    }

    /**
     * 导出门诊卡充值记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:record:export')")
    @Log(title = "门诊卡充值记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        List<CostOutpatientRechargeRecord> list = costOutpatientRechargeRecordService.selectCostOutpatientRechargeRecordList(costOutpatientRechargeRecord);
        ExcelUtil<CostOutpatientRechargeRecord> util = new ExcelUtil<CostOutpatientRechargeRecord>(CostOutpatientRechargeRecord.class);
        return util.exportExcel(list, "门诊卡充值记录数据");
    }

    /**
     * 获取门诊卡充值记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:record:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(costOutpatientRechargeRecordService.selectCostOutpatientRechargeRecordById(id));
    }

    /**
     * 新增门诊卡充值记录
     */
    @PreAuthorize("@ss.hasPermi('medical:record:add')")
    @Log(title = "门诊卡充值记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        return toAjax(costOutpatientRechargeRecordService.insertCostOutpatientRechargeRecord(costOutpatientRechargeRecord));
    }

    /**
     * 修改门诊卡充值记录
     */
    @PreAuthorize("@ss.hasPermi('medical:record:edit')")
    @Log(title = "门诊卡充值记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        return toAjax(costOutpatientRechargeRecordService.updateCostOutpatientRechargeRecord(costOutpatientRechargeRecord));
    }

    /**
     * 删除门诊卡充值记录
     */
    @PreAuthorize("@ss.hasPermi('medical:record:remove')")
    @Log(title = "门诊卡充值记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(costOutpatientRechargeRecordService.deleteCostOutpatientRechargeRecordByIds(ids));
    }
}
