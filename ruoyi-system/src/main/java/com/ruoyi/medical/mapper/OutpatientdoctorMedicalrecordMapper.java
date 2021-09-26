package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.OutpatientdoctorMedicalrecord;

/**
 * 门诊病历Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface OutpatientdoctorMedicalrecordMapper 
{
    /**
     * 查询门诊病历
     * 
     * @param id 门诊病历主键
     * @return 门诊病历
     */
    public OutpatientdoctorMedicalrecord selectOutpatientdoctorMedicalrecordById(String id);

    /**
     * 查询门诊病历列表
     * 
     * @param outpatientdoctorMedicalrecord 门诊病历
     * @return 门诊病历集合
     */
    public List<OutpatientdoctorMedicalrecord> selectOutpatientdoctorMedicalrecordList(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord);

    /**
     * 新增门诊病历
     * 
     * @param outpatientdoctorMedicalrecord 门诊病历
     * @return 结果
     */
    public int insertOutpatientdoctorMedicalrecord(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord);

    /**
     * 修改门诊病历
     * 
     * @param outpatientdoctorMedicalrecord 门诊病历
     * @return 结果
     */
    public int updateOutpatientdoctorMedicalrecord(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord);

    /**
     * 删除门诊病历
     * 
     * @param id 门诊病历主键
     * @return 结果
     */
    public int deleteOutpatientdoctorMedicalrecordById(String id);

    /**
     * 批量删除门诊病历
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorMedicalrecordByIds(String[] ids);
}
