package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.OutpatientdoctorResult;

/**
 * 医生看病结果Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface OutpatientdoctorResultMapper 
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
     * 删除医生看病结果
     * 
     * @param opDoctorResultId 医生看病结果主键
     * @return 结果
     */
    public int deleteOutpatientdoctorResultByOpDoctorResultId(String opDoctorResultId);

    /**
     * 批量删除医生看病结果
     * 
     * @param opDoctorResultIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorResultByOpDoctorResultIds(String[] opDoctorResultIds);
}
