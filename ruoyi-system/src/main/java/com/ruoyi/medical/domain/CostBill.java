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
public class CostBill extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 患者费用账单id
     */
    private String id;

    /**
     * 门诊卡信息id
     */
    @Excel(name = "门诊卡信息id")
    private String outpatientId;

    /**
     * 金额
     */
    @Excel(name = "金额")
    private Float money;

    /**
     * 状态
     */
    @Excel(name = "状态")
    private Integer status;

    private CostOutpatientInfo coi;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setOutpatientId(String outpatientId) {
        this.outpatientId = outpatientId;
    }

    public String getOutpatientId() {
        return outpatientId;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "CostBill{" +
                "id='" + id + '\'' +
                ", outpatientId='" + outpatientId + '\'' +
                ", money=" + money +
                ", status=" + status +
                '}';
    }

    public CostOutpatientInfo getCoi() {
        return coi;
    }

    public void setCoi(CostOutpatientInfo coi) {
        this.coi = coi;
    }
}
