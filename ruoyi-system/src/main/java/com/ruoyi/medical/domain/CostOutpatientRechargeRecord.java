package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 门诊卡充值记录对象 t_medical_cost_outpatient_recharge_record
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CostOutpatientRechargeRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 门诊卡充值记录id */
    private String id;

    /** 金额 */
    @Excel(name = "金额")
    private Float money;

    /** 类型 */
    @Excel(name = "类型")
    private Long type;

    /** 门诊卡信息id */
    @Excel(name = "门诊卡信息id")
    private String outpatientId;

    public TMedicalDo getTmd() {
        return tmd;
    }

    public void setTmd(TMedicalDo tmd) {
        this.tmd = tmd;
    }

    private TMedicalDo tmd;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setMoney(Float money)
    {
        this.money = money;
    }

    public Float getMoney()
    {
        return money;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setOutpatientId(String outpatientId) 
    {
        this.outpatientId = outpatientId;
    }

    public String getOutpatientId() 
    {
        return outpatientId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("money", getMoney())
            .append("type", getType())
            .append("createTime", getCreateTime())
            .append("outpatientId", getOutpatientId())
            .toString();
    }
}
