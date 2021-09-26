package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医嘱记录对象 t_medical_emr_doctorsorder
 * 
 * @author bao
 * @date 2021-09-23
 */
public class EmrDoctorsorder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 医嘱记录id */
    private String id;

    /** 患者id */
    @Excel(name = "患者id")
    private String personId;

    /** 主治医生d */
    @Excel(name = "主治医生d")
    private String doctorId;

    /** 类型 */
    @Excel(name = "类型")
    private Long status;

    /** 状态 */
    @Excel(name = "状态")
    private Long type;

    /** 医嘱描述 */
    @Excel(name = "医嘱描述")
    private String description;

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
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("personId", getPersonId())
            .append("doctorId", getDoctorId())
            .append("status", getStatus())
            .append("type", getType())
            .append("description", getDescription())
            .append("createTime", getCreateTime())
            .toString();
    }
}
