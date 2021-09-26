package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.OutpatientdoctorReceiverecord;

/**
 * 接诊记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface IOutpatientdoctorReceiverecordService 
{
    /**
     * 查询接诊记录
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 接诊记录
     */
    public OutpatientdoctorReceiverecord selectOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId);

    /**
     * 查询接诊记录列表
     * 
     * @param outpatientdoctorReceiverecord 接诊记录
     * @return 接诊记录集合
     */
    public List<OutpatientdoctorReceiverecord> selectOutpatientdoctorReceiverecordList(OutpatientdoctorReceiverecord outpatientdoctorReceiverecord);

    /**
     * 新增接诊记录
     * 
     * @param outpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    public int insertOutpatientdoctorReceiverecord(OutpatientdoctorReceiverecord outpatientdoctorReceiverecord);

    /**
     * 修改接诊记录
     * 
     * @param outpatientdoctorReceiverecord 接诊记录
     * @return 结果
     */
    public int updateOutpatientdoctorReceiverecord(OutpatientdoctorReceiverecord outpatientdoctorReceiverecord);

    /**
     * 批量删除接诊记录
     * 
     * @param opDoctorReceiveRecordIds 需要删除的接诊记录主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(String[] opDoctorReceiveRecordIds);

    /**
     * 删除接诊记录信息
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 结果
     */
    public int deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId);
}
