package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.OutpatientdoctorReceiverecord;

/**
 * 接诊记录Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface OutpatientdoctorReceiverecordMapper 
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
     * 删除接诊记录
     * 
     * @param opDoctorReceiveRecordId 接诊记录主键
     * @return 结果
     */
    public int deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordId(String opDoctorReceiveRecordId);

    /**
     * 批量删除接诊记录
     * 
     * @param opDoctorReceiveRecordIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorReceiverecordByOpDoctorReceiveRecordIds(String[] opDoctorReceiveRecordIds);
}
