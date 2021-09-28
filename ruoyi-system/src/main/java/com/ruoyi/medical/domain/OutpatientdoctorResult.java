package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医生看病结果对象 t_medical_outpatientdoctor_result
 * 
 * @author bao
 * @date 2021-09-23
 */
public class OutpatientdoctorResult extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 医生看病结果id */
    private String opDoctorResultId;

    /** 病名称 */
    @Excel(name = "病名称")
    private String name;

    /** 描述症状 */
    @Excel(name = "描述症状")
    private String description;

    /** 门诊医生接诊记录id */
    @Excel(name = "门诊医生接诊记录id")
    private String opDoctorReceiveRecordId;

    public void setOpDoctorResultId(String opDoctorResultId)
    {
        this.opDoctorResultId = opDoctorResultId;
    }

    public String getOpDoctorResultId() 
    {
        return opDoctorResultId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setOpDoctorReceiveRecordId(String opDoctorReceiveRecordId) 
    {
        this.opDoctorReceiveRecordId = opDoctorReceiveRecordId;
    }

    public String getOpDoctorReceiveRecordId() 
    {
        return opDoctorReceiveRecordId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("opDoctorResultId", getOpDoctorResultId())
            .append("name", getName())
            .append("description", getDescription())
            .append("remark", getRemark())
            .append("opDoctorReceiveRecordId", getOpDoctorReceiveRecordId())
            .toString();
    }
}
