package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 患者费用账单对象 t_medical_cost_bill
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CostBill extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 患者费用账单id */
    private String id;

    /** 门诊卡信息id */
    @Excel(name = "门诊卡信息id")
    private String outpatientId;

    /** 金额 */
    @Excel(name = "金额")
    private Long money;

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
    public void setMoney(Long money) 
    {
        this.money = money;
    }

    public Long getMoney() 
    {
        return money;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("outpatientId", getOutpatientId())
            .append("money", getMoney())
            .append("createTime", getCreateTime())
            .toString();
    }
}
