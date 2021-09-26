package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 住院治疗处方对象 t_medical_cpoe_prescription
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CpoePrescription extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 住院治疗处方id */
    private String id;

    /** 当天处方汇总id */
    @Excel(name = "当天处方汇总id")
    private String prescriptionTotalId;

    /** 医嘱记录id */
    @Excel(name = "医嘱记录id")
    private String doctorsOrderId;

    /** 药品id */
    @Excel(name = "药品id")
    private String partId;

    /** 用量 */
    @Excel(name = "用量")
    private String partNo;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setPrescriptionTotalId(String prescriptionTotalId) 
    {
        this.prescriptionTotalId = prescriptionTotalId;
    }

    public String getPrescriptionTotalId() 
    {
        return prescriptionTotalId;
    }
    public void setDoctorsOrderId(String doctorsOrderId) 
    {
        this.doctorsOrderId = doctorsOrderId;
    }

    public String getDoctorsOrderId() 
    {
        return doctorsOrderId;
    }
    public void setPartId(String partId) 
    {
        this.partId = partId;
    }

    public String getPartId() 
    {
        return partId;
    }
    public void setPartNo(String partNo) 
    {
        this.partNo = partNo;
    }

    public String getPartNo() 
    {
        return partNo;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("prescriptionTotalId", getPrescriptionTotalId())
            .append("doctorsOrderId", getDoctorsOrderId())
            .append("partId", getPartId())
            .append("partNo", getPartNo())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .toString();
    }
}
