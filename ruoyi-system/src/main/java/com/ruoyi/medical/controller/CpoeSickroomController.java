package com.ruoyi.medical.controller;

import java.util.ArrayList;
import java.util.List;

import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.medical.domain.CpoeBed;
import com.ruoyi.medical.modle.Option;
import com.ruoyi.medical.service.ICpoeBedService;
import com.ruoyi.system.service.ISysDictDataService;
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
import com.ruoyi.medical.domain.CpoeSickroom;
import com.ruoyi.medical.service.ICpoeSickroomService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 病房记录Controller
 *
 * @author bao
 * @date 2021-09-23
 */
@RestController
@RequestMapping("/medical/sickroom")
public class CpoeSickroomController extends BaseController {
    @Autowired
    private ICpoeSickroomService cpoeSickroomService;

    @Autowired
    private ICpoeBedService icbs;

    @Autowired
    private ISysDictDataService isdd;


    /**
     * 查询病房记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:list')")
    @GetMapping("/list")
    public TableDataInfo list(CpoeSickroom cpoeSickroom) {
        startPage();
        List<CpoeSickroom> list = cpoeSickroomService.selectCpoeSickroomList(cpoeSickroom);
        return getDataTable(list);
    }

    /**
     * 导出病房记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:export')")
    @Log(title = "病房记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(CpoeSickroom cpoeSickroom) {
        List<CpoeSickroom> list = cpoeSickroomService.selectCpoeSickroomList(cpoeSickroom);
        ExcelUtil<CpoeSickroom> util = new ExcelUtil<CpoeSickroom>(CpoeSickroom.class);
        return util.exportExcel(list, "病房记录数据");
    }

    /**
     * 获取病房记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(cpoeSickroomService.selectCpoeSickroomById(id));
    }

    /**
     * 新增病房记录
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:add')")
    @Log(title = "病房记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CpoeSickroom cpoeSickroom) {
        String id = MyIdGenUtils.ByPinyinAndTimestamp(SecurityUtils.getUsername());
        cpoeSickroom.setId(id);
        cpoeSickroom.setStatus(1l);
        return toAjax(cpoeSickroomService.insertCpoeSickroom(cpoeSickroom));
    }

    /**
     * 修改病房记录
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:edit')")
    @Log(title = "病房记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CpoeSickroom cpoeSickroom) {
        return toAjax(cpoeSickroomService.updateCpoeSickroom(cpoeSickroom));
    }

    /**
     * 删除病房记录
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:remove')")
    @Log(title = "病房记录", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(cpoeSickroomService.deleteCpoeSickroomByIds(ids));
    }

    /**
     * 分配床位
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:add')")
    @PostMapping("/addBed")
    public AjaxResult addBed(@RequestBody CpoeSickroom cpoeSickroom) {
        int code = 0;
        String username = SecurityUtils.getUsername();
        CpoeBed cb = new CpoeBed();
        cb.setSickroomId(cpoeSickroom.getId());

        int num = Integer.parseInt(cpoeSickroom.getUnit());

        for (int i = 1; i <= num; i++) {
            String id = MyIdGenUtils.ByPinyinAndTimestamp(username);
            String name = cpoeSickroom.getName() + "_bed_00" + i;
            cb.setId(id);
            cb.setName(name);
            cb.setRemark(username + "分配了床位:" + name);

            code = icbs.insertCpoeBed(cb);
        }

        CpoeSickroom cs = new CpoeSickroom();
        cs.setId(cpoeSickroom.getId());
        cs.setStatus(2l);

        code = cpoeSickroomService.updateCpoeSickroom(cs);

        return toAjax(code);
    }

    /**
     * 查询病房记录列表
     */
    @PreAuthorize("@ss.hasPermi('medical:sickroom:list')")
    @GetMapping("/getList")
    public TableDataInfo getList() {
        List<Option> l = new ArrayList<>();
        List<Option> la = null;
        List<Option> lb = null;
        Option o = null;

        SysDictData sdd = new SysDictData();
        sdd.setDictType("medical_sickroom_attribute");
        List<SysDictData> sdds = isdd.selectDictDataList(sdd);

        for (SysDictData dd : sdds) {
            List<CpoeSickroom> list = cpoeSickroomService.selectList(dd.getDictValue());
            la = new ArrayList<>();

            for (CpoeSickroom cs : list) {
                List<CpoeBed> cbs = cs.getCbs();
                lb = new ArrayList<>();
                for (CpoeBed cb : cbs) {
                    o = new Option();
                    o.setLabel(cb.getName());
                    o.setValue(cb.getId());
                    o.setChildren(null);
                    lb.add(o);
                }

                o = new Option();
                o.setLabel(cs.getName());
                o.setValue(cs.getId());
                o.setChildren(lb);
                la.add(o);
            }

            o = new Option();
            o.setLabel(dd.getDictLabel());
            o.setValue(dd.getDictValue());
            o.setChildren(la);

            l.add(o);
        }

        return getDataTable(l);
    }
}
