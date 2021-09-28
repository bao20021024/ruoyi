package com.ruoyi.medical.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.OutpatientdoctorResultMapper;
import com.ruoyi.medical.domain.OutpatientdoctorResult;
import com.ruoyi.medical.service.IOutpatientdoctorResultService;

/**
 * 医生看病结果Service业务层处理
 *
 * @author bao
 * @date 2021-09-23
 */
@Service
public class OutpatientdoctorResultServiceImpl implements IOutpatientdoctorResultService {
    @Autowired
    private OutpatientdoctorResultMapper outpatientdoctorResultMapper;

    /**
     * 查询医生看病结果
     *
     * @param opDoctorResultId 医生看病结果主键
     * @return 医生看病结果
     */
    @Override
    public OutpatientdoctorResult selectOutpatientdoctorResultByOpDoctorResultId(String opDoctorResultId) {
        return outpatientdoctorResultMapper.selectOutpatientdoctorResultByOpDoctorResultId(opDoctorResultId);
    }

    /**
     * 查询医生看病结果列表
     *
     * @param outpatientdoctorResult 医生看病结果
     * @return 医生看病结果
     */
    @Override
    public List<OutpatientdoctorResult> selectOutpatientdoctorResultList(OutpatientdoctorResult outpatientdoctorResult) {
        return outpatientdoctorResultMapper.selectOutpatientdoctorResultList(outpatientdoctorResult);
    }

    /**
     * 新增医生看病结果
     *
     * @param outpatientdoctorResult 医生看病结果
     * @return 结果
     */
    @Override
    public int insertOutpatientdoctorResult(OutpatientdoctorResult outpatientdoctorResult) {
        return outpatientdoctorResultMapper.insertOutpatientdoctorResult(outpatientdoctorResult);
    }

    /**
     * 修改医生看病结果
     *
     * @param outpatientdoctorResult 医生看病结果
     * @return 结果
     */
    @Override
    public int updateOutpatientdoctorResult(OutpatientdoctorResult outpatientdoctorResult) {
        return outpatientdoctorResultMapper.updateOutpatientdoctorResult(outpatientdoctorResult);
    }

    /**
     * 批量删除医生看病结果
     *
     * @param opDoctorResultIds 需要删除的医生看病结果主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorResultByOpDoctorResultIds(String[] opDoctorResultIds) {
        return outpatientdoctorResultMapper.deleteOutpatientdoctorResultByOpDoctorResultIds(opDoctorResultIds);
    }

    /**
     * 删除医生看病结果信息
     *
     * @param opDoctorResultId 医生看病结果主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorResultByOpDoctorResultId(String opDoctorResultId) {
        return outpatientdoctorResultMapper.deleteOutpatientdoctorResultByOpDoctorResultId(opDoctorResultId);
    }

    @Override
    public OutpatientdoctorResult selectByOpDoctorReceiveRecordId(String id) {
        return outpatientdoctorResultMapper.selectByOpDoctorReceiveRecordId(id);
    }
}
