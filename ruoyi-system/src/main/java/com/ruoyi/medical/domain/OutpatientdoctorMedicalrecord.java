package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 门诊病历对象 t_medical_outpatientdoctor_medicalrecord
 * 
 * @author bao
 * @date 2021-09-23
 */
public class OutpatientdoctorMedicalrecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 门诊记录id */
    private String id;

    /** 门诊卡信息id */
    @Excel(name = "门诊卡信息id")
    private String outpatientId;

    /** 病历URL */
    @Excel(name = "病历URL")
    private String medicalRecordURL;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setOutpatientId(String outpatientId) 
    {
        this.outpatientId = outpatientId;
    }

    public String getOutpatientId() 
    {
        return outpatientId;
    }
    public void setMedicalRecordURL(String medicalRecordURL) 
    {
        this.medicalRecordURL = medicalRecordURL;
    }

    public String getMedicalRecordURL() 
    {
        return medicalRecordURL;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("outpatientId", getOutpatientId())
            .append("medicalRecordURL", getMedicalRecordURL())
            .toString();
    }
}
