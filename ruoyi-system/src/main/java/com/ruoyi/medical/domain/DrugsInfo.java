package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 药品对象 t_medical_drugs_info
 *
 * @author bao
 * @date 2021-09-23
 */
public class DrugsInfo extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 药品id
     */
    private String id;

    /**
     * 药品名称
     */
    @Excel(name = "药品名称")
    private String name;

    /**
     * 药品单价
     */
    @Excel(name = "药品单价")
    private Float money;

    /**
     * 规格
     */
    @Excel(name = "规格")
    private String Specifications;

    /**
     * 单位
     */
    @Excel(name = "单位")
    private String unit;

    /**
     * 药品描述
     */
    @Excel(name = "药品描述")
    private String description;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setSpecifications(String Specifications) {
        this.Specifications = Specifications;
    }

    public String getSpecifications() {
        return Specifications;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getUnit() {
        return unit;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }

    @Override
    public String toString() {
        return "DrugsInfo{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", money=" + money +
                ", Specifications='" + Specifications + '\'' +
                ", unit='" + unit + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
