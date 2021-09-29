package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.TMedicalOutpatientdoctorReceiverecord;

/**
 * 接诊记录Service接口
 * 
 * @author bao
 * @date 2021-09-26
 */
public interface ITMedicalOutpatientdoctorReceiverecordService 
{
    /**
     * 查询接诊记录
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 接诊记录
     */
    public TMedicalOutpatientdoctorReceiverecord selectTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId);

    /**
     * 查询接诊记录列表
     * 
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 接诊记录集合
     */
    public List<TMedicalOutpatientdoctorReceiverecord> selectTMedicalOutpatientdoctorReceiverecordList(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord);

    /**
     * 新增接诊记录
     * 
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    public int insertTMedicalOutpatientdoctorReceiverecord(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord);

    /**
     * 修改接诊记录
     * 
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    public int updateTMedicalOutpatientdoctorReceiverecord(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord);

    /**
     * 批量删除接诊记录
     * 
     * @param opDoctorReceiveRecordIds 需要删除的接诊记录主键集合
     * @return 结果
     */
    public int deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(String[] opDoctorReceiveRecordIds);

    /**
     * 删除接诊记录信息
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 结果
     */
    public int deleteTMedicalOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId);


    /**
     * 查询所有住院类型的患者接诊记录
     *
     * @param tMedicalOutpatientdoctorReceiverecord 接诊记录
     * @return 接诊记录集合
     */
    public List<TMedicalOutpatientdoctorReceiverecord> selectListAboutSickroom(TMedicalOutpatientdoctorReceiverecord tMedicalOutpatientdoctorReceiverecord);
}
