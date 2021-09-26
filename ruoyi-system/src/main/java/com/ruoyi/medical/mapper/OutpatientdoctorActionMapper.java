package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.OutpatientdoctorAction;

/**
 * 医生看病流程Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface OutpatientdoctorActionMapper 
{
    /**
     * 查询医生看病流程
     * 
     * @param id 医生看病流程主键
     * @return 医生看病流程
     */
    public OutpatientdoctorAction selectOutpatientdoctorActionById(String id);

    /**
     * 查询医生看病流程列表
     * 
     * @param outpatientdoctorAction 医生看病流程
     * @return 医生看病流程集合
     */
    public List<OutpatientdoctorAction> selectOutpatientdoctorActionList(OutpatientdoctorAction outpatientdoctorAction);

    /**
     * 新增医生看病流程
     * 
     * @param outpatientdoctorAction 医生看病流程
     * @return 结果
     */
    public int insertOutpatientdoctorAction(OutpatientdoctorAction outpatientdoctorAction);

    /**
     * 修改医生看病流程
     * 
     * @param outpatientdoctorAction 医生看病流程
     * @return 结果
     */
    public int updateOutpatientdoctorAction(OutpatientdoctorAction outpatientdoctorAction);

    /**
     * 删除医生看病流程
     * 
     * @param id 医生看病流程主键
     * @return 结果
     */
    public int deleteOutpatientdoctorActionById(String id);

    /**
     * 批量删除医生看病流程
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorActionByIds(String[] ids);
}
