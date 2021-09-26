package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.EmrDoctorsorderMapper;
import com.ruoyi.medical.domain.EmrDoctorsorder;
import com.ruoyi.medical.service.IEmrDoctorsorderService;

/**
 * 医嘱记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class EmrDoctorsorderServiceImpl implements IEmrDoctorsorderService 
{
    @Autowired
    private EmrDoctorsorderMapper emrDoctorsorderMapper;

    /**
     * 查询医嘱记录
     * 
     * @param id 医嘱记录主键
     * @return 医嘱记录
     */
    @Override
    public EmrDoctorsorder selectEmrDoctorsorderById(String id)
    {
        return emrDoctorsorderMapper.selectEmrDoctorsorderById(id);
    }

    /**
     * 查询医嘱记录列表
     * 
     * @param emrDoctorsorder 医嘱记录
     * @return 医嘱记录
     */
    @Override
    public List<EmrDoctorsorder> selectEmrDoctorsorderList(EmrDoctorsorder emrDoctorsorder)
    {
        return emrDoctorsorderMapper.selectEmrDoctorsorderList(emrDoctorsorder);
    }

    /**
     * 新增医嘱记录
     * 
     * @param emrDoctorsorder 医嘱记录
     * @return 结果
     */
    @Override
    public int insertEmrDoctorsorder(EmrDoctorsorder emrDoctorsorder)
    {
        emrDoctorsorder.setCreateTime(DateUtils.getNowDate());
        return emrDoctorsorderMapper.insertEmrDoctorsorder(emrDoctorsorder);
    }

    /**
     * 修改医嘱记录
     * 
     * @param emrDoctorsorder 医嘱记录
     * @return 结果
     */
    @Override
    public int updateEmrDoctorsorder(EmrDoctorsorder emrDoctorsorder)
    {
        return emrDoctorsorderMapper.updateEmrDoctorsorder(emrDoctorsorder);
    }

    /**
     * 批量删除医嘱记录
     * 
     * @param ids 需要删除的医嘱记录主键
     * @return 结果
     */
    @Override
    public int deleteEmrDoctorsorderByIds(String[] ids)
    {
        return emrDoctorsorderMapper.deleteEmrDoctorsorderByIds(ids);
    }

    /**
     * 删除医嘱记录信息
     * 
     * @param id 医嘱记录主键
     * @return 结果
     */
    @Override
    public int deleteEmrDoctorsorderById(String id)
    {
        return emrDoctorsorderMapper.deleteEmrDoctorsorderById(id);
    }
}
