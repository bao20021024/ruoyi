package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 药库库存对象 t_medical_drugs_storage
 * 
 * @author bao
 * @date 2021-09-23
 */
public class DrugsStorage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 药库库存id */
    private String id;

    /** 药品名称id */
    @Excel(name = "药品名称id")
    private String drugsId;

    /** 数量 */
    @Excel(name = "数量")
    private Long no;

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
    public void setNo(Long no) 
    {
        this.no = no;
    }

    public Long getNo() 
    {
        return no;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("drugsId", getDrugsId())
            .append("no", getNo())
            .toString();
    }
}
