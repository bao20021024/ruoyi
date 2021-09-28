package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 患者费用明细对象 t_medical_cost_bill_detail
 *
 * @author bao
 * @date 2021-09-23
 */
public class CostBillDetail extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 患者费用明细id
     */
    private String id;

    /**
     * 患者费用账单id
     */
    @Excel(name = "患者费用账单id")
    private String billid;

    /**
     * 消费事项
     */
    @Excel(name = "消费事项")
    private String partName;

    /**
     * 事项数量
     */
    @Excel(name = "事项数量")
    private Long partNumber;

    /**
     * 事项类型
     */
    @Excel(name = "事项类型")
    private Long type;

    /**
     * 单价
     */
    @Excel(name = "单价")
    private Float partMoney;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setBillid(String billid) {
        this.billid = billid;
    }

    public String getBillid() {
        return billid;
    }

    public void setPartName(String partName) {
        this.partName = partName;
    }

    public String getPartName() {
        return partName;
    }

    public void setPartNumber(Long partNumber) {
        this.partNumber = partNumber;
    }

    public Long getPartNumber() {
        return partNumber;
    }

    public void setPartMoney(Float partMoney) {
        this.partMoney = partMoney;
    }

    public Float getPartMoney() {
        return partMoney;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("billid", getBillid())
                .append("partName", getPartName())
                .append("partNumber", getPartNumber())
                .append("partMoney", getPartMoney())
                .toString();
    }

    public Long getType() {
        return type;
    }

    public void setType(Long type) {
        this.type = type;
    }
}
