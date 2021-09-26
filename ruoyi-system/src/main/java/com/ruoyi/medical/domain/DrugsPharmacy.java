package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 药房库存对象 t_medical_drugs_pharmacy
 * 
 * @author bao
 * @date 2021-09-23
 */
public class DrugsPharmacy extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 药房库存id */
    private String id;

    /** 药品名称id */
    @Excel(name = "药品名称id")
    private String drugsId;

    /** 药房名称 */
    @Excel(name = "药房名称")
    private String name;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
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
            .append("name", getName())
            .append("no", getNo())
            .toString();
    }
}
