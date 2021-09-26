package com.ruoyi.medical.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 操作记录对象 t_medical_do
 * 
 * @author bao
 * @date 2021-09-24
 */
public class TMedicalDo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 操作id */
    private String id;

    /** 操作人 */
    @Excel(name = "操作人")
    private String doUser;

    /** 操作时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "操作时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date doTime;

    /** 操作对象id */
    @Excel(name = "操作对象id")
    private String doId;

    /** 操作对象类型 */
    @Excel(name = "操作对象类型")
    private Long doType;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setDoUser(String doUser) 
    {
        this.doUser = doUser;
    }

    public String getDoUser() 
    {
        return doUser;
    }
    public void setDoTime(Date doTime) 
    {
        this.doTime = doTime;
    }

    public Date getDoTime() 
    {
        return doTime;
    }
    public void setDoId(String doId) 
    {
        this.doId = doId;
    }

    public String getDoId() 
    {
        return doId;
    }
    public void setDoType(Long doType) 
    {
        this.doType = doType;
    }

    public Long getDoType() 
    {
        return doType;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("doUser", getDoUser())
            .append("doTime", getDoTime())
            .append("doId", getDoId())
            .append("doType", getDoType())
            .toString();
    }
}
