package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医嘱执行记录对象 t_medical_cpoe_doctorsorderhandle
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CpoeDoctorsorderhandle extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 医嘱执行记录id */
    private String id;

    /** 操作人 */
    @Excel(name = "操作人")
    private String userId;

    /** 医嘱记录id */
    @Excel(name = "医嘱记录id")
    private String doctorsOrderId;

    /** 状态 */
    @Excel(name = "状态")
    private Long result;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setDoctorsOrderId(String doctorsOrderId) 
    {
        this.doctorsOrderId = doctorsOrderId;
    }

    public String getDoctorsOrderId() 
    {
        return doctorsOrderId;
    }
    public void setResult(Long result) 
    {
        this.result = result;
    }

    public Long getResult() 
    {
        return result;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("doctorsOrderId", getDoctorsOrderId())
            .append("createTime", getCreateTime())
            .append("result", getResult())
            .append("remark", getRemark())
            .toString();
    }
}
