package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.EmrDoctorsorder;

/**
 * 医嘱记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface IEmrDoctorsorderService 
{
    /**
     * 查询医嘱记录
     * 
     * @param id 医嘱记录主键
     * @return 医嘱记录
     */
    public EmrDoctorsorder selectEmrDoctorsorderById(String id);

    /**
     * 查询医嘱记录列表
     * 
     * @param emrDoctorsorder 医嘱记录
     * @return 医嘱记录集合
     */
    public List<EmrDoctorsorder> selectEmrDoctorsorderList(EmrDoctorsorder emrDoctorsorder);

    /**
     * 新增医嘱记录
     * 
     * @param emrDoctorsorder 医嘱记录
     * @return 结果
     */
    public int insertEmrDoctorsorder(EmrDoctorsorder emrDoctorsorder);

    /**
     * 修改医嘱记录
     * 
     * @param emrDoctorsorder 医嘱记录
     * @return 结果
     */
    public int updateEmrDoctorsorder(EmrDoctorsorder emrDoctorsorder);

    /**
     * 批量删除医嘱记录
     * 
     * @param ids 需要删除的医嘱记录主键集合
     * @return 结果
     */
    public int deleteEmrDoctorsorderByIds(String[] ids);

    /**
     * 删除医嘱记录信息
     * 
     * @param id 医嘱记录主键
     * @return 结果
     */
    public int deleteEmrDoctorsorderById(String id);
}
