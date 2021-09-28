package com.ruoyi.medical.controller;

import java.util.List;

import com.ruoyi.medical.domain.EmrDoctorsorder;
import com.ruoyi.medical.service.IEmrDoctorsorderService;
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
import com.ruoyi.medical.domain.PacsInfo;
import com.ruoyi.medical.service.IPacsInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * PACS影像信息Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/pacs")
public class PacsInfoController extends BaseController {
    @Autowired
    private IPacsInfoService pacsInfoService;

    @Autowired
    private IEmrDoctorsorderService ieds;

    /**
     * 查询PACS影像信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:pacs:list')")
    @GetMapping("/list")
    public TableDataInfo list(PacsInfo pacsInfo) {
        startPage();
        List<PacsInfo> list = pacsInfoService.selectPacsInfoList(pacsInfo);
        return getDataTable(list);
    }

    /**
     * 导出PACS影像信息列表
     */
    @PreAuthorize("@ss.hasPermi('medical:pacs:export')")
    @Log(title = "PACS影像信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(PacsInfo pacsInfo) {
        List<PacsInfo> list = pacsInfoService.selectPacsInfoList(pacsInfo);
        ExcelUtil<PacsInfo> util = new ExcelUtil<PacsInfo>(PacsInfo.class);
        return util.exportExcel(list, "PACS影像信息数据");
    }

    /**
     * 获取PACS影像信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:pacs:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(pacsInfoService.selectPacsInfoById(id));
    }

    /**
     * 新增PACS影像信息
     */
    @PreAuthorize("@ss.hasPermi('medical:pacs:add')")
    @Log(title = "PACS影像信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PacsInfo pacsInfo) {
        return toAjax(pacsInfoService.insertPacsInfo(pacsInfo));
    }

    /**
     * 修改PACS影像信息
     */
    @PreAuthorize("@ss.hasPermi('medical:pacs:edit')")
    @Log(title = "PACS影像信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PacsInfo pacsInfo) {
        int code = 0;
        EmrDoctorsorder ed = new EmrDoctorsorder();
        ed.setId(pacsInfo.getId());
        ed.setType(3l);
        code = ieds.updateEmrDoctorsorder(ed);
        if (code > 0) {
            code = pacsInfoService.updatePacsInfo(pacsInfo);
        }
        return toAjax(code);
    }

    /**
     * 删除PACS影像信息
     */
    @PreAuthorize("@ss.hasPermi('medical:pacs:remove')")
    @Log(title = "PACS影像信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(pacsInfoService.deletePacsInfoByIds(ids));
    }
}
