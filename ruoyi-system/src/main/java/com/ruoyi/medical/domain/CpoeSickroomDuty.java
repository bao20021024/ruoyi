package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 病房值班记录对象 t_medical_cpoe_sickroom_duty
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CpoeSickroomDuty extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 病房值班记录id */
    private String id;

    /** 病房id */
    @Excel(name = "病房id")
    private String sickroomId;

    /** 值班医生 */
    @Excel(name = "值班医生")
    private String doctorId;

    /** 值班护士 */
    @Excel(name = "值班护士")
    private String nurseId;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setSickroomId(String sickroomId) 
    {
        this.sickroomId = sickroomId;
    }

    public String getSickroomId() 
    {
        return sickroomId;
    }
    public void setDoctorId(String doctorId) 
    {
        this.doctorId = doctorId;
    }

    public String getDoctorId() 
    {
        return doctorId;
    }
    public void setNurseId(String nurseId) 
    {
        this.nurseId = nurseId;
    }

    public String getNurseId() 
    {
        return nurseId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("sickroomId", getSickroomId())
            .append("doctorId", getDoctorId())
            .append("nurseId", getNurseId())
            .toString();
    }
}
