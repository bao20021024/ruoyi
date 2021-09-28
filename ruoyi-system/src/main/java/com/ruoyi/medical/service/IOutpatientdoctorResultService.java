package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.OutpatientdoctorResult;

/**
 * 医生看病结果Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface IOutpatientdoctorResultService 
{
    /**
     * 查询医生看病结果
     * 
     * @param opDoctorResultId 医生看病结果主键
     * @return 医生看病结果
     */
    public OutpatientdoctorResult selectOutpatientdoctorResultByOpDoctorResultId(String opDoctorResultId);

    /**
     * 查询医生看病结果列表
     * 
     * @param outpatientdoctorResult 医生看病结果
     * @return 医生看病结果集合
     */
    public List<OutpatientdoctorResult> selectOutpatientdoctorResultList(OutpatientdoctorResult outpatientdoctorResult);

    /**
     * 新增医生看病结果
     * 
     * @param outpatientdoctorResult 医生看病结果
     * @return 结果
     */
    public int insertOutpatientdoctorResult(OutpatientdoctorResult outpatientdoctorResult);

    /**
     * 修改医生看病结果
     * 
     * @param outpatientdoctorResult 医生看病结果
     * @return 结果
     */
    public int updateOutpatientdoctorResult(OutpatientdoctorResult outpatientdoctorResult);

    /**
     * 批量删除医生看病结果
     * 
     * @param opDoctorResultIds 需要删除的医生看病结果主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorResultByOpDoctorResultIds(String[] opDoctorResultIds);

    /**
     * 删除医生看病结果信息
     * 
     * @param opDoctorResultId 医生看病结果主键
     * @return 结果
     */
    public int deleteOutpatientdoctorResultByOpDoctorResultId(String opDoctorResultId);

    /**
     * 根据门诊id查询医生看病结果
     *
     * @param id 门诊id
     * @return 医生看病结果
     */
    public OutpatientdoctorResult selectByOpDoctorReceiveRecordId(String id);
}
