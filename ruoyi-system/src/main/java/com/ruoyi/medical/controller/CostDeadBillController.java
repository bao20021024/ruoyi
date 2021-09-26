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
import com.ruoyi.medical.domain.CostDeadBill;
import com.ruoyi.medical.service.ICostDeadBillService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 医院烂账记录Controller
 * 
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/dead")
public class CostDeadBillController extends BaseController
{
    @Autowired
    private ICostDeadBillService costDeadBillService;

    /**
     * 查询医院烂账记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:dead:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostDeadBill costDeadBill)
    {
        startPage();
        List<CostDeadBill> list = costDeadBillService.selectCostDeadBillList(costDeadBill);
        return getDataTable(list);
    }

    /**
     * 导出医院烂账记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:dead:export')")
    @Log(title = "医院烂账记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CostDeadBill costDeadBill)
    {
        List<CostDeadBill> list = costDeadBillService.selectCostDeadBillList(costDeadBill);
        ExcelUtil<CostDeadBill> util = new ExcelUtil<CostDeadBill>(CostDeadBill.class);
        return util.exportExcel(list, "医院烂账记录数据");
    }

    /**
     * 获取医院烂账记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:dead:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(costDeadBillService.selectCostDeadBillById(id));
    }

    /**
     * 新增医院烂账记录
     */
    @PreAuthorize("@ss.hasPermi('medical:dead:add')")
    @Log(title = "医院烂账记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostDeadBill costDeadBill)
    {
        return toAjax(costDeadBillService.insertCostDeadBill(costDeadBill));
    }

    /**
     * 修改医院烂账记录
     */
    @PreAuthorize("@ss.hasPermi('medical:dead:edit')")
    @Log(title = "医院烂账记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostDeadBill costDeadBill)
    {
        return toAjax(costDeadBillService.updateCostDeadBill(costDeadBill));
    }

    /**
     * 删除医院烂账记录
     */
    @PreAuthorize("@ss.hasPermi('medical:dead:remove')")
    @Log(title = "医院烂账记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(costDeadBillService.deleteCostDeadBillByIds(ids));
    }
}
