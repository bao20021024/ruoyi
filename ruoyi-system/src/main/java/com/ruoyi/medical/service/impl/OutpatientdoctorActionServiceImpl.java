package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.OutpatientdoctorActionMapper;
import com.ruoyi.medical.domain.OutpatientdoctorAction;
import com.ruoyi.medical.service.IOutpatientdoctorActionService;

/**
 * 医生看病流程Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class OutpatientdoctorActionServiceImpl implements IOutpatientdoctorActionService 
{
    @Autowired
    private OutpatientdoctorActionMapper outpatientdoctorActionMapper;

    /**
     * 查询医生看病流程
     * 
     * @param id 医生看病流程主键
     * @return 医生看病流程
     */
    @Override
    public OutpatientdoctorAction selectOutpatientdoctorActionById(String id)
    {
        return outpatientdoctorActionMapper.selectOutpatientdoctorActionById(id);
    }

    /**
     * 查询医生看病流程列表
     * 
     * @param outpatientdoctorAction 医生看病流程
     * @return 医生看病流程
     */
    @Override
    public List<OutpatientdoctorAction> selectOutpatientdoctorActionList(OutpatientdoctorAction outpatientdoctorAction)
    {
        return outpatientdoctorActionMapper.selectOutpatientdoctorActionList(outpatientdoctorAction);
    }

    /**
     * 新增医生看病流程
     * 
     * @param outpatientdoctorAction 医生看病流程
     * @return 结果
     */
    @Override
    public int insertOutpatientdoctorAction(OutpatientdoctorAction outpatientdoctorAction)
    {
        return outpatientdoctorActionMapper.insertOutpatientdoctorAction(outpatientdoctorAction);
    }

    /**
     * 修改医生看病流程
     * 
     * @param outpatientdoctorAction 医生看病流程
     * @return 结果
     */
    @Override
    public int updateOutpatientdoctorAction(OutpatientdoctorAction outpatientdoctorAction)
    {
        return outpatientdoctorActionMapper.updateOutpatientdoctorAction(outpatientdoctorAction);
    }

    /**
     * 批量删除医生看病流程
     * 
     * @param ids 需要删除的医生看病流程主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorActionByIds(String[] ids)
    {
        return outpatientdoctorActionMapper.deleteOutpatientdoctorActionByIds(ids);
    }

    /**
     * 删除医生看病流程信息
     * 
     * @param id 医生看病流程主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorActionById(String id)
    {
        return outpatientdoctorActionMapper.deleteOutpatientdoctorActionById(id);
    }
}
