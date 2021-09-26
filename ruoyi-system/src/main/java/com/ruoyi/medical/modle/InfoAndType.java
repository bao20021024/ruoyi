package com.ruoyi.medical.modle;

import com.ruoyi.medical.domain.CostOutpatientInfo;

public class InfoAndType {

    private CostOutpatientInfo info;
    private String type;
    private Float money;

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }

    public CostOutpatientInfo getInfo() {
        return info;
    }

    public void setInfo(CostOutpatientInfo info) {
        this.info = info;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
