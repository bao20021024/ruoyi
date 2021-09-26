package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.OutpatientdoctorReceiverecordMapper;
import com.ruoyi.medical.domain.OutpatientdoctorReceiverecord;
import com.ruoyi.medical.service.IOutpatientdoctorReceiverecordService;

/**
 * 接诊记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class OutpatientdoctorReceiverecordServiceImpl implements IOutpatientdoctorReceiverecordService 
{
    @Autowired
    private OutpatientdoctorReceiverecordMapper outpatientdoctorReceiverecordMapper;

    /**
     * 查询接诊记录
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 接诊记录
     */
    @Override
    public OutpatientdoctorReceiverecord selectOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId)
    {
        return outpatientdoctorReceiverecordMapper.selectOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(opDoctorReceiveRecordId);
    }

    /**
     * 查询接诊记录列表
     * 
     * @param outpatientdoctorReceiverecord 接诊记录
     * @return 接诊记录
     */
    @Override
    public List<OutpatientdoctorReceiverecord> selectOutpatientdoctorReceiverecordList(OutpatientdoctorReceiverecord outpatientdoctorReceiverecord)
    {
        return outpatientdoctorReceiverecordMapper.selectOutpatientdoctorReceiverecordList(outpatientdoctorReceiverecord);
    }

    /**
     * 新增接诊记录
     * 
     * @param outpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    @Override
    public int insertOutpatientdoctorReceiverecord(OutpatientdoctorReceiverecord outpatientdoctorReceiverecord)
    {
        outpatientdoctorReceiverecord.setCreateTime(DateUtils.getNowDate());
        return outpatientdoctorReceiverecordMapper.insertOutpatientdoctorReceiverecord(outpatientdoctorReceiverecord);
    }

    /**
     * 修改接诊记录
     * 
     * @param outpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    @Override
    public int updateOutpatientdoctorReceiverecord(OutpatientdoctorReceiverecord outpatientdoctorReceiverecord)
    {
        return outpatientdoctorReceiverecordMapper.updateOutpatientdoctorReceiverecord(outpatientdoctorReceiverecord);
    }

    /**
     * 批量删除接诊记录
     * 
     * @param opDoctorReceiveRecordIds 需要删除的接诊记录主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(String[] opDoctorReceiveRecordIds)
    {
        return outpatientdoctorReceiverecordMapper.deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(opDoctorReceiveRecordIds);
    }

    /**
     * 删除接诊记录信息
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId)
    {
        return outpatientdoctorReceiverecordMapper.deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(opDoctorReceiveRecordId);
    }
}
