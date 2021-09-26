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
import com.ruoyi.medical.domain.CostBillDetail;
import com.ruoyi.medical.service.ICostBillDetailService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 患者费用明细Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/detail")
public class CostBillDetailController extends BaseController
{
    @Autowired
    private ICostBillDetailService costBillDetailService;

    /**
     * 查询患者费用明细列表
     */
    @PreAuthorize("@ss.hasPermi('medical:detail:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostBillDetail costBillDetail)
    {
        startPage();
        List<CostBillDetail> list = costBillDetailService.selectCostBillDetailList(costBillDetail);
        return getDataTable(list);
    }

    /**
     * 导出患者费用明细列表
     */
    @PreAuthorize("@ss.hasPermi('medical:detail:export')")
    @Log(title = "患者费用明细", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CostBillDetail costBillDetail)
    {
        List<CostBillDetail> list = costBillDetailService.selectCostBillDetailList(costBillDetail);
        ExcelUtil<CostBillDetail> util = new ExcelUtil<CostBillDetail>(CostBillDetail.class);
        return util.exportExcel(list, "患者费用明细数据");
    }

    /**
     * 获取患者费用明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:detail:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(costBillDetailService.selectCostBillDetailById(id));
    }

    /**
     * 新增患者费用明细
     */
    @PreAuthorize("@ss.hasPermi('medical:detail:add')")
    @Log(title = "患者费用明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostBillDetail costBillDetail)
    {
        return toAjax(costBillDetailService.insertCostBillDetail(costBillDetail));
    }

    /**
     * 修改患者费用明细
     */
    @PreAuthorize("@ss.hasPermi('medical:detail:edit')")
    @Log(title = "患者费用明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostBillDetail costBillDetail)
    {
        return toAjax(costBillDetailService.updateCostBillDetail(costBillDetail));
    }

    /**
     * 删除患者费用明细
     */
    @PreAuthorize("@ss.hasPermi('medical:detail:remove')")
    @Log(title = "患者费用明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(costBillDetailService.deleteCostBillDetailByIds(ids));
    }
}
