package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医生看病治疗方案对象 t_medical_outpatientdoctor_resulthandle
 *
 * @author bao
 * @date 2021-09-23
 */
public class OutpatientdoctorResulthandle extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 医生看病治疗方案id
     */
    private String id;

    /**
     * 消费事项
     */
    @Excel(name = "药品id")
    private String drugsId;

    /**
     * 事项数量
     */
    @Excel(name = "药品数量")
    private Long partNumber;

    /**
     * 医生治疗结果id
     */
    @Excel(name = "医生治疗结果id")
    private String opDoctorResultId;

    private DrugsInfo di;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setPartNumber(Long partNumber) {
        this.partNumber = partNumber;
    }

    public Long getPartNumber() {
        return partNumber;
    }

    public void setOpDoctorResultId(String opDoctorResultId) {
        this.opDoctorResultId = opDoctorResultId;
    }

    public String getOpDoctorResultId() {
        return opDoctorResultId;
    }

    public String getDrugsId() {
        return drugsId;
    }

    public void setDrugsId(String drugsId) {
        this.drugsId = drugsId;
    }

    @Override
    public String toString() {
        return "OutpatientdoctorResulthandle{" +
                "id='" + id + '\'' +
                ", drugsId='" + drugsId + '\'' +
                ", partNumber=" + partNumber +
                ", opDoctorResultId='" + opDoctorResultId + '\'' +
                '}';
    }

    public DrugsInfo getDi() {
        return di;
    }

    public void setDi(DrugsInfo di) {
        this.di = di;
    }
}
