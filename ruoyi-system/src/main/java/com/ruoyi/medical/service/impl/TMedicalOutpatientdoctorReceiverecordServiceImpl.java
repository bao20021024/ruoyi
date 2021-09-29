package com.ruoyi.medical.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.TMedicalOutpatientdoctorReceiverecordMapper;
import com.ruoyi.medical.domain.TMedicalOutpatientdoctorReceiverecord;
import com.ruoyi.medical.service.ITMedicalOutpatientdoctorReceiverecordService;

/**
 * 接诊记录Service业务层处理
 *
 * @author bao
 * @date 2021-09-26
 */
@Service
public class TMedicalOutpatientdoctorReceiverecordServiceImpl implements ITMedicalOutpatientdoctorReceiverecordService {
    @Autowired
    private TMedicalOutpatientdoctorReceiverecordMapper tMedicalOutpatientdoctorReceiverecordMapper;

    /**
     * 查询接诊记录
     *
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 接诊记录
     */
    @Override
    public TMedicalOutpatientdoctorReceiverecord selectTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId) {
        return tMedicalOutpatientdoctorReceiverecordMapper.selectTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(opDoctorReceiveRecordId);
    }

    /**
     * 查询接诊记录列表
     *
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 接诊记录
     */
    @Override
    public List<TMedicalOutpatientdoctorReceiverecord> selectTMedicalOutpatientdoctorReceiverecordList(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        return tMedicalOutpatientdoctorReceiverecordMapper.selectTMedicalOutpatientdoctorReceiverecordList(tMedicalOutpatientdoctorReceiverecord);
    }

    /**
     * 新增接诊记录
     *
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    @Override
    public int insertTMedicalOutpatientdoctorReceiverecord(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        tMedicalOutpatientdoctorReceiverecord.setCreateTime(DateUtils.getNowDate());
        return tMedicalOutpatientdoctorReceiverecordMapper.insertTMedicalOutpatientdoctorReceiverecord(tMedicalOutpatientdoctorReceiverecord);
    }

    /**
     * 修改接诊记录
     *
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    @Override
    public int updateTMedicalOutpatientdoctorReceiverecord(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        return tMedicalOutpatientdoctorReceiverecordMapper.updateTMedicalOutpatientdoctorReceiverecord(tMedicalOutpatientdoctorReceiverecord);
    }

    /**
     * 批量删除接诊记录
     *
     * @param opDoctorReceiveRecordIds 需要删除的接诊记录主键
     * @return 结果
     */
    @Override
    public int deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(String[] opDoctorReceiveRecordIds) {
        return tMedicalOutpatientdoctorReceiverecordMapper.deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(opDoctorReceiveRecordIds);
    }

    /**
     * 删除接诊记录信息
     *
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 结果
     */
    @Override
    public int deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId) {
        return tMedicalOutpatientdoctorReceiverecordMapper.deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(opDoctorReceiveRecordId);
    }

    @Override
    public List<TMedicalOutpatientdoctorReceiverecord> selectListAboutSickroom(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord) {
        return tMedicalOutpatientdoctorReceiverecordMapper.selectListAboutSickroom(tMedicalOutpatientdoctorReceiverecord);
    }
}
