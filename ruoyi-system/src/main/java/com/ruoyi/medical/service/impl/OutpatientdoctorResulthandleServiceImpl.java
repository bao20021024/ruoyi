package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.OutpatientdoctorResulthandleMapper;
import com.ruoyi.medical.domain.OutpatientdoctorResulthandle;
import com.ruoyi.medical.service.IOutpatientdoctorResulthandleService;

/**
 * 医生看病治疗方案Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class OutpatientdoctorResulthandleServiceImpl implements IOutpatientdoctorResulthandleService 
{
    @Autowired
    private OutpatientdoctorResulthandleMapper outpatientdoctorResulthandleMapper;

    /**
     * 查询医生看病治疗方案
     * 
     * @param id 医生看病治疗方案主键
     * @return 医生看病治疗方案
     */
    @Override
    public OutpatientdoctorResulthandle selectOutpatientdoctorResulthandleById(String id)
    {
        return outpatientdoctorResulthandleMapper.selectOutpatientdoctorResulthandleById(id);
    }

    /**
     * 查询医生看病治疗方案列表
     * 
     * @param outpatientdoctorResulthandle 医生看病治疗方案
     * @return 医生看病治疗方案
     */
    @Override
    public List<OutpatientdoctorResulthandle> selectOutpatientdoctorResulthandleList(OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        return outpatientdoctorResulthandleMapper.selectOutpatientdoctorResulthandleList(outpatientdoctorResulthandle);
    }

    /**
     * 新增医生看病治疗方案
     * 
     * @param outpatientdoctorResulthandle 医生看病治疗方案
     * @return 结果
     */
    @Override
    public int insertOutpatientdoctorResulthandle(OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        return outpatientdoctorResulthandleMapper.insertOutpatientdoctorResulthandle(outpatientdoctorResulthandle);
    }

    /**
     * 修改医生看病治疗方案
     * 
     * @param outpatientdoctorResulthandle 医生看病治疗方案
     * @return 结果
     */
    @Override
    public int updateOutpatientdoctorResulthandle(OutpatientdoctorResulthandle outpatientdoctorResulthandle)
    {
        return outpatientdoctorResulthandleMapper.updateOutpatientdoctorResulthandle(outpatientdoctorResulthandle);
    }

    /**
     * 批量删除医生看病治疗方案
     * 
     * @param ids 需要删除的医生看病治疗方案主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorResulthandleByIds(String[] ids)
    {
        return outpatientdoctorResulthandleMapper.deleteOutpatientdoctorResulthandleByIds(ids);
    }

    /**
     * 删除医生看病治疗方案信息
     * 
     * @param id 医生看病治疗方案主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorResulthandleById(String id)
    {
        return outpatientdoctorResulthandleMapper.deleteOutpatientdoctorResulthandleById(id);
    }

    @Override
    public List<OutpatientdoctorResulthandle> selectByOpDoctorResultId(String id) {
        return outpatientdoctorResulthandleMapper.selectByOpDoctorResultId(id);
    }
}
