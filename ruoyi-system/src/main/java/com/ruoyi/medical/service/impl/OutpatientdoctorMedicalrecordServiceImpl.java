package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.OutpatientdoctorMedicalrecordMapper;
import com.ruoyi.medical.domain.OutpatientdoctorMedicalrecord;
import com.ruoyi.medical.service.IOutpatientdoctorMedicalrecordService;

/**
 * 门诊病历Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class OutpatientdoctorMedicalrecordServiceImpl implements IOutpatientdoctorMedicalrecordService 
{
    @Autowired
    private OutpatientdoctorMedicalrecordMapper outpatientdoctorMedicalrecordMapper;

    /**
     * 查询门诊病历
     * 
     * @param id 门诊病历主键
     * @return 门诊病历
     */
    @Override
    public OutpatientdoctorMedicalrecord selectOutpatientdoctorMedicalrecordById(String id)
    {
        return outpatientdoctorMedicalrecordMapper.selectOutpatientdoctorMedicalrecordById(id);
    }

    /**
     * 查询门诊病历列表
     * 
     * @param outpatientdoctorMedicalrecord 门诊病历
     * @return 门诊病历
     */
    @Override
    public List<OutpatientdoctorMedicalrecord> selectOutpatientdoctorMedicalrecordList(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        return outpatientdoctorMedicalrecordMapper.selectOutpatientdoctorMedicalrecordList(outpatientdoctorMedicalrecord);
    }

    /**
     * 新增门诊病历
     * 
     * @param outpatientdoctorMedicalrecord 门诊病历
     * @return 结果
     */
    @Override
    public int insertOutpatientdoctorMedicalrecord(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        return outpatientdoctorMedicalrecordMapper.insertOutpatientdoctorMedicalrecord(outpatientdoctorMedicalrecord);
    }

    /**
     * 修改门诊病历
     * 
     * @param outpatientdoctorMedicalrecord 门诊病历
     * @return 结果
     */
    @Override
    public int updateOutpatientdoctorMedicalrecord(OutpatientdoctorMedicalrecord outpatientdoctorMedicalrecord)
    {
        return outpatientdoctorMedicalrecordMapper.updateOutpatientdoctorMedicalrecord(outpatientdoctorMedicalrecord);
    }

    /**
     * 批量删除门诊病历
     * 
     * @param ids 需要删除的门诊病历主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorMedicalrecordByIds(String[] ids)
    {
        return outpatientdoctorMedicalrecordMapper.deleteOutpatientdoctorMedicalrecordByIds(ids);
    }

    /**
     * 删除门诊病历信息
     * 
     * @param id 门诊病历主键
     * @return 结果
     */
    @Override
    public int deleteOutpatientdoctorMedicalrecordById(String id)
    {
        return outpatientdoctorMedicalrecordMapper.deleteOutpatientdoctorMedicalrecordById(id);
    }
}
