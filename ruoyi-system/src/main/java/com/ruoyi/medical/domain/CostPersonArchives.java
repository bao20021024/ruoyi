package com.ruoyi.medical.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 个人档案对象 t_medical_cost_person_archives
 *
 * @author bao
 * @date 2021-09-23
 */
public class CostPersonArchives extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 个人档案id
     */
    private String id;

    /**
     * 姓名
     */
    @Excel(name = "姓名")
    private String name;

    /**
     * 年龄
     */
    @Excel(name = "年龄")
    private Long age;

    /**
     * 身份证
     */
    @Excel(name = "身份证")
    private String code;

    /**
     * 性别
     */
    @Excel(name = "性别")
    private String sex;

    private TMedicalDo tmd;

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAge(Long age) {
        this.age = age;
    }

    public Long getAge() {
        return age;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSex() {
        return sex;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("name", getName())
                .append("age", getAge())
                .append("code", getCode())
                .append("sex", getSex())
                .append("tmd", getTmd())
                .toString();
    }

    public TMedicalDo getTmd() {
        return tmd;
    }

    public void setTmd(TMedicalDo tmd) {
        this.tmd = tmd;
    }
}
