package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 分床记录对象 t_medical_cpoe_splitbed
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CpoeSplitbed extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分床记录id */
    private String id;

    /** 患者id */
    @Excel(name = "患者id")
    private String personId;

    /** 主治医师id */
    @Excel(name = "主治医师id")
    private String doctorId;

    /** 床位id */
    @Excel(name = "床位id")
    private String bedId;

    private CpoeBed cb;

    private CostPersonArchives cpa;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setPersonId(String personId) 
    {
        this.personId = personId;
    }

    public String getPersonId() 
    {
        return personId;
    }
    public void setDoctorId(String doctorId) 
    {
        this.doctorId = doctorId;
    }

    public String getDoctorId() 
    {
        return doctorId;
    }
    public void setBedId(String bedId) 
    {
        this.bedId = bedId;
    }

    public String getBedId() 
    {
        return bedId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("personId", getPersonId())
            .append("doctorId", getDoctorId())
            .append("bedId", getBedId())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .toString();
    }

    public CpoeBed getCb() {
        return cb;
    }

    public void setCb(CpoeBed cb) {
        this.cb = cb;
    }

    public CostPersonArchives getCpa() {
        return cpa;
    }

    public void setCpa(CostPersonArchives cpa) {
        this.cpa = cpa;
    }
}
