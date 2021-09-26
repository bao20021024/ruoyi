package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * Lis检验信息对象 t_medical_lis_info
 * 
 * @author bao
 * @date 2021-09-23
 */
public class LisInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** Lis检验信息id */
    private String id;

    /** 消费事项 */
    @Excel(name = "消费事项")
    private String name;

    /** 患者id */
    @Excel(name = "患者id")
    private String personId;

    /** 医生id */
    @Excel(name = "医生id")
    private String doctorid;

    /** 状态 */
    @Excel(name = "状态")
    private Long status;

    /** 门诊医生接诊记录id */
    @Excel(name = "门诊医生接诊记录id")
    private String receiveRecordId;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setPersonId(String personId) 
    {
        this.personId = personId;
    }

    public String getPersonId() 
    {
        return personId;
    }
    public void setDoctorid(String doctorid) 
    {
        this.doctorid = doctorid;
    }

    public String getDoctorid() 
    {
        return doctorid;
    }
    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }
    public void setReceiveRecordId(String receiveRecordId) 
    {
        this.receiveRecordId = receiveRecordId;
    }

    public String getReceiveRecordId() 
    {
        return receiveRecordId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("personId", getPersonId())
            .append("doctorid", getDoctorid())
            .append("createTime", getCreateTime())
            .append("status", getStatus())
            .append("receiveRecordId", getReceiveRecordId())
            .toString();
    }
}
