package com.ruoyi.medical.controller;

import java.util.Date;
import java.util.List;

import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.medical.domain.TMedicalOutpatientdoctorReceiverecord;
import com.ruoyi.medical.service.ITMedicalOutpatientdoctorReceiverecordService;
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
import com.ruoyi.medical.domain.CpoeSplitbed;
import com.ruoyi.medical.service.ICpoeSplitbedService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分床记录Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/splitbed")
public class CpoeSplitbedController extends BaseController {
    @Autowired
    private ICpoeSplitbedService cpoeSplitbedService;

    @Autowired
    private ITMedicalOutpatientdoctorReceiverecordService itmors;

    /**
     * 查询分床记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoeSplitbed cpoeSplitbed) {
        startPage();
        List<CpoeSplitbed> list = cpoeSplitbedService.selectCpoeSplitbedList(cpoeSplitbed);
        return getDataTable(list);
    }

    /**
     * 导出分床记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:export')")
    @Log(title = "分床记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoeSplitbed cpoeSplitbed) {
        List<CpoeSplitbed> list = cpoeSplitbedService.selectCpoeSplitbedList(cpoeSplitbed);
        ExcelUtil<CpoeSplitbed> util = new ExcelUtil<CpoeSplitbed>(CpoeSplitbed.class);
        return util.exportExcel(list, "分床记录数据");
    }

    /**
     * 获取分床记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(cpoeSplitbedService.selectCpoeSplitbedById(id));
    }

    /**
     * 新增分床记录
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:add')")
    @Log(title = "分床记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoeSplitbed cpoeSplitbed) {
        int code = 0;

        TMedicalOutpatientdoctorReceiverecord tmor = new TMedicalOutpatientdoctorReceiverecord();
        tmor.setOpDoctorReceiveRecordId(cpoeSplitbed.getId());
        tmor.setStatus(8l);

        code = itmors.updateTMedicalOutpatientdoctorReceiverecord(tmor);

        if (code > 0) {
//            String id = MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername());
            cpoeSplitbed.setId(cpoeSplitbed.getId());
            cpoeSplitbed.setCreateTime(new Date());

            code = cpoeSplitbedService.insertCpoeSplitbed(cpoeSplitbed);
        }

        return toAjax(code);
    }

    /**
     * 修改分床记录
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:edit')")
    @Log(title = "分床记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoeSplitbed cpoeSplitbed) {
        return toAjax(cpoeSplitbedService.updateCpoeSplitbed(cpoeSplitbed));
    }

    /**
     * 删除分床记录
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:remove')")
    @Log(title = "分床记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(cpoeSplitbedService.deleteCpoeSplitbedByIds(ids));
    }

    /**
     * 退床
     */
    @PreAuthorize("@ss.hasPermi('medical:splitbed:tui')")
    @PostMapping("/tui")
    public AjaxResult tui(@RequestBody CpoeSplitbed cpoeSplitbed) {
        int code = 0;

        String id = cpoeSplitbed.getId();


        TMedicalOutpatientdoctorReceiverecord tmor = new TMedicalOutpatientdoctorReceiverecord();
        tmor.setOpDoctorReceiveRecordId(id);
        tmor.setStatus(9l);

        code = itmors.updateTMedicalOutpatientdoctorReceiverecord(tmor);

        if (code > 0) {
            code = cpoeSplitbedService.deleteCpoeSplitbedById(id);
        }

        return toAjax(code);
    }
}
