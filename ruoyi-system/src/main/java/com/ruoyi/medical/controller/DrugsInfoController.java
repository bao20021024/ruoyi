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
import com.ruoyi.medical.domain.DrugsInfo;
import com.ruoyi.medical.service.IDrugsInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 药品Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/drugs")
public class DrugsInfoController extends BaseController {
    @Autowired
    private IDrugsInfoService drugsInfoService;

    /**
     * 查询药品列表
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrugsInfo drugsInfo) {
        startPage();
        List<DrugsInfo> list = drugsInfoService.selectDrugsInfoList(drugsInfo);
        return getDataTable(list);
    }

    /**
     * 查询药品列表
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:list')")
    @PostMapping("/getList")
    public TableDataInfo getList() {
        List<DrugsInfo> list = drugsInfoService.selectDrugsInfoList(null);
        return getDataTable(list);
    }

    /**
     * 导出药品列表
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:export')")
    @Log(title = "药品", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(DrugsInfo drugsInfo) {
        List<DrugsInfo> list = drugsInfoService.selectDrugsInfoList(drugsInfo);
        ExcelUtil<DrugsInfo> util = new ExcelUtil<DrugsInfo>(DrugsInfo.class);
        return util.exportExcel(list, "药品数据");
    }

    /**
     * 获取药品详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(drugsInfoService.selectDrugsInfoById(id));
    }

    /**
     * 新增药品
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:add')")
    @Log(title = "药品", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrugsInfo drugsInfo) {
        drugsInfo.setId(MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername()));
        return toAjax(drugsInfoService.insertDrugsInfo(drugsInfo));
    }

    /**
     * 修改药品
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:edit')")
    @Log(title = "药品", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrugsInfo drugsInfo) {
        return toAjax(drugsInfoService.updateDrugsInfo(drugsInfo));
    }

    /**
     * 删除药品
     */
    @PreAuthorize("@ss.hasPermi('medical:drugs:remove')")
    @Log(title = "药品", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(drugsInfoService.deleteDrugsInfoByIds(ids));
    }
}
