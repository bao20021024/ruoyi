package com.ruoyi.medical.domain;

import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.domain.entity.SysDictType;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 病房记录对象 t_medical_cpoe_sickroom
 *
 * @author bao
 * @date 2021-09-23
 */
public class CpoeSickroom extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 病房记录id
     */
    private String id;

    /**
     * 病房名称
     */
    @Excel(name = "病房名称")
    private String name;

    /**
     * 规格
     */
    @Excel(name = "规格")
    private String unit;

    /**
     * 属性
     */
    @Excel(name = "属性")
    private String attribute;

    /**
     * 状态
     */
    @Excel(name = "状态")
    private Long status;

    private List<CpoeBed> cbs;

    private SysDictData sdd;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getUnit() {
        return unit;
    }

    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }

    public String getAttribute() {
        return attribute;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("unit", getUnit())
                .append("attribute", getAttribute())
                .append("remark", getRemark())
                .toString();
    }

    public List<CpoeBed> getCbs() {
        return cbs;
    }

    public void setCbs(List<CpoeBed> cbs) {
        this.cbs = cbs;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    public SysDictData getSdd() {
        return sdd;
    }

    public void setSdd(SysDictData sdd) {
        this.sdd = sdd;
    }
}
