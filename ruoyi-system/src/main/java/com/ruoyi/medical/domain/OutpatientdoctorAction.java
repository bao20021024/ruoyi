package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医生看病流程对象 t_medical_outpatientdoctor_action
 *
 * @author bao
 * @date 2021-09-23
 */
public class OutpatientdoctorAction extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 医生看病流程id
     */
    private String id;

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
     * 单价
     */
    @Excel(name = "单价")
    private Float partMoney;

    /**
     * 类型
     */
    @Excel(name = "类型")
    private Long type;

    /**
     * 门诊医生接诊记录id/医嘱记录id
     */
    @Excel(name = "门诊医生接诊记录id/医嘱记录id")
    private String opDoctorReceiveRecordId;

    private TMedicalOutpatientdoctorReceiverecord tmor;

    public TMedicalOutpatientdoctorReceiverecord getTmor() {
        return tmor;
    }

    public void setTmor(TMedicalOutpatientdoctorReceiverecord tmor) {
        this.tmor = tmor;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
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

    public void setType(Long type) {
        this.type = type;
    }

    public Long getType() {
        return type;
    }

    public void setOpDoctorReceiveRecordId(String opDoctorReceiveRecordId) {
        this.opDoctorReceiveRecordId = opDoctorReceiveRecordId;
    }

    public String getOpDoctorReceiveRecordId() {
        return opDoctorReceiveRecordId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("partName", getPartName())
                .append("partNumber", getPartNumber())
                .append("partMoney", getPartMoney())
                .append("type", getType())
                .append("opDoctorReceiveRecordId", getOpDoctorReceiveRecordId())
                .toString();
    }
}
