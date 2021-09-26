package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 盘点记录对象 t_medical_drugs_inventory_record
 * 
 * @author bao
 * @date 2021-09-23
 */
public class DrugsInventoryRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 盘点记录id */
    private String id;

    /** 药品名称id */
    @Excel(name = "药品名称id")
    private String drugsId;

    /** 账面数量 */
    @Excel(name = "账面数量")
    private Long paperNumber;

    /** 实存数量 */
    @Excel(name = "实存数量")
    private Long existNumber;

    /** 购进单价 */
    @Excel(name = "购进单价")
    private Long buyUnitPrice;

    /** 零售单价 */
    @Excel(name = "零售单价")
    private Long sellUnitPrice;

    /** 盘盈数量 */
    @Excel(name = "盘盈数量")
    private Long InventorySurplusNo;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setDrugsId(String drugsId) 
    {
        this.drugsId = drugsId;
    }

    public String getDrugsId() 
    {
        return drugsId;
    }
    public void setPaperNumber(Long paperNumber) 
    {
        this.paperNumber = paperNumber;
    }

    public Long getPaperNumber() 
    {
        return paperNumber;
    }
    public void setExistNumber(Long existNumber) 
    {
        this.existNumber = existNumber;
    }

    public Long getExistNumber() 
    {
        return existNumber;
    }
    public void setBuyUnitPrice(Long buyUnitPrice) 
    {
        this.buyUnitPrice = buyUnitPrice;
    }

    public Long getBuyUnitPrice() 
    {
        return buyUnitPrice;
    }
    public void setSellUnitPrice(Long sellUnitPrice) 
    {
        this.sellUnitPrice = sellUnitPrice;
    }

    public Long getSellUnitPrice() 
    {
        return sellUnitPrice;
    }
    public void setInventorySurplusNo(Long InventorySurplusNo) 
    {
        this.InventorySurplusNo = InventorySurplusNo;
    }

    public Long getInventorySurplusNo() 
    {
        return InventorySurplusNo;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("drugsId", getDrugsId())
            .append("paperNumber", getPaperNumber())
            .append("existNumber", getExistNumber())
            .append("buyUnitPrice", getBuyUnitPrice())
            .append("sellUnitPrice", getSellUnitPrice())
            .append("InventorySurplusNo", getInventorySurplusNo())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .toString();
    }
}
