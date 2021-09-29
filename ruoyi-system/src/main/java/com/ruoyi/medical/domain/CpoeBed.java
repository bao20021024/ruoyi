package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 床位记录对象 t_medical_cpoe_bed
 *
 * @author bao
 * @date 2021-09-23
 */
public class CpoeBed extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 床位记录id
     */
    private String id;

    /**
     * 床位名称
     */
    @Excel(name = "床位名称")
    private String name;

    /**
     * 病房id
     */
    @Excel(name = "病房id")
    private String sickroomId;

    private CpoeSickroom cs;

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

    public void setSickroomId(String sickroomId) {
        this.sickroomId = sickroomId;
    }

    public String getSickroomId() {
        return sickroomId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("sickroomId", getSickroomId())
                .append("remark", getRemark())
                .toString();
    }

    public CpoeSickroom getCs() {
        return cs;
    }

    public void setCs(CpoeSickroom cs) {
        this.cs = cs;
    }
}
