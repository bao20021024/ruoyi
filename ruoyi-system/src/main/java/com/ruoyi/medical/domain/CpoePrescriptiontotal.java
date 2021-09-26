package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 住院治疗处方总对象 t_medical_cpoe_prescriptiontotal
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CpoePrescriptiontotal extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 住院治疗处方总id */
    private String id;

    /** 状态 */
    @Excel(name = "状态")
    private Long statue;

    /** 药品id */
    @Excel(name = "药品id")
    private String partId;

    /** 单位 */
    @Excel(name = "单位")
    private String partType;

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
    public void setStatue(Long statue) 
    {
        this.statue = statue;
    }

    public Long getStatue() 
    {
        return statue;
    }
    public void setPartId(String partId) 
    {
        this.partId = partId;
    }

    public String getPartId() 
    {
        return partId;
    }
    public void setPartType(String partType) 
    {
        this.partType = partType;
    }

    public String getPartType() 
    {
        return partType;
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
            .append("statue", getStatue())
            .append("partId", getPartId())
            .append("partType", getPartType())
            .append("partNo", getPartNo())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .toString();
    }
}
