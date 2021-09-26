package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 接诊记录对象 t_medical_outpatientdoctor_receiverecord
 * 
 * @author bao
 * @date 2021-09-23
 */
public class OutpatientdoctorReceiverecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 接诊记录id */
    private String opDoctorReceiveRecordId;

    /** 门诊卡信息id */
    @Excel(name = "门诊卡信息id")
    private String outpatientId;

    /** 医生id */
    @Excel(name = "医生id")
    private String doctorId;

    /** 状态 */
    @Excel(name = "状态")
    private Long status;

    public void setOpDoctorReceiveRecordId(String opDoctorReceiveRecordId) 
    {
        this.opDoctorReceiveRecordId = opDoctorReceiveRecordId;
    }

    public String getOpDoctorReceiveRecordId() 
    {
        return opDoctorReceiveRecordId;
    }
    public void setOutpatientId(String outpatientId) 
    {
        this.outpatientId = outpatientId;
    }

    public String getOutpatientId() 
    {
        return outpatientId;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("opDoctorReceiveRecordId", getOpDoctorReceiveRecordId())
            .append("outpatientId", getOutpatientId())
            .append("doctorId", getDoctorId())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .toString();
    }
}
