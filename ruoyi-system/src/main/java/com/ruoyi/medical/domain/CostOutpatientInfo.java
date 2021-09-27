package com.ruoyi.medical.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 门诊卡信息对象 t_medical_cost_outpatient_info
 *
 * @author bao
 * @date 2021-09-23
 */
public class CostOutpatientInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 门诊卡信息id */
    private Long id;

    /** 金额 */
    @Excel(name = "金额")
    private Float money;

    /** 启用日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "启用日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date enableTime;

    /** 挂失日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "挂失日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date lossTime;

    /** 卡作废日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "卡作废日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date deadTime;

    /** 退卡日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "退卡日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date returnTime;

    /** 卡状态 */
    @Excel(name = "卡状态")
    private Long status;

    /** 押金 */
    @Excel(name = "押金")
    private Long deposit;

    /** 个人档案id */
    @Excel(name = "个人档案id")
    private String personid;

    private TMedicalDo tmd;

    private CostPersonArchives cpa;

    public CostPersonArchives getCpa() {
        return cpa;
    }

    public void setCpa(CostPersonArchives cpa) {
        this.cpa = cpa;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setMoney(Float money)
    {
        this.money = money;
    }

    public Float getMoney()
    {
        return money;
    }
    public void setEnableTime(Date enableTime)
    {
        this.enableTime = enableTime;
    }

    public Date getEnableTime()
    {
        return enableTime;
    }
    public void setLossTime(Date lossTime)
    {
        this.lossTime = lossTime;
    }

    public Date getLossTime()
    {
        return lossTime;
    }
    public void setDeadTime(Date deadTime)
    {
        this.deadTime = deadTime;
    }

    public Date getDeadTime()
    {
        return deadTime;
    }
    public void setReturnTime(Date returnTime)
    {
        this.returnTime = returnTime;
    }

    public Date getReturnTime()
    {
        return returnTime;
    }
    public void setStatus(Long status)
    {
        this.status = status;
    }

    public Long getStatus()
    {
        return status;
    }
    public void setDeposit(Long deposit)
    {
        this.deposit = deposit;
    }

    public Long getDeposit()
    {
        return deposit;
    }
    public void setPersonid(String personid)
    {
        this.personid = personid;
    }

    public String getPersonid()
    {
        return personid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("money", getMoney())
            .append("enableTime", getEnableTime())
            .append("lossTime", getLossTime())
            .append("deadTime", getDeadTime())
            .append("returnTime", getReturnTime())
            .append("status", getStatus())
            .append("deposit", getDeposit())
            .append("personid", getPersonid())
            .toString();
    }

    public TMedicalDo getTmd() {
        return tmd;
    }

    public void setTmd(TMedicalDo tmd) {
        this.tmd = tmd;
    }
}
