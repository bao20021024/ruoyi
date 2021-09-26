package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医院烂账记录对象 t_medical_cost_dead_bill
 * 
 * @author bao
 * @date 2021-09-23
 */
public class CostDeadBill extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 医院烂账记录id */
    private String id;

    /** 实收金额 */
    @Excel(name = "实收金额")
    private Long realNoney;

    /** 账上金额 */
    @Excel(name = "账上金额")
    private Long accountMoney;

    /** 用户账号 */
    @Excel(name = "用户账号")
    private String userName;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setRealNoney(Long realNoney) 
    {
        this.realNoney = realNoney;
    }

    public Long getRealNoney() 
    {
        return realNoney;
    }
    public void setAccountMoney(Long accountMoney) 
    {
        this.accountMoney = accountMoney;
    }

    public Long getAccountMoney() 
    {
        return accountMoney;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("realNoney", getRealNoney())
            .append("accountMoney", getAccountMoney())
            .append("userName", getUserName())
            .append("createTime", getCreateTime())
            .toString();
    }
}
