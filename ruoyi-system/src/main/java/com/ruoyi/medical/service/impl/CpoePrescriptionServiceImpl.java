package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoePrescriptionMapper;
import com.ruoyi.medical.domain.CpoePrescription;
import com.ruoyi.medical.service.ICpoePrescriptionService;

/**
 * 住院治疗处方Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoePrescriptionServiceImpl implements ICpoePrescriptionService 
{
    @Autowired
    private CpoePrescriptionMapper cpoePrescriptionMapper;

    /**
     * 查询住院治疗处方
     * 
     * @param id 住院治疗处方主键
     * @return 住院治疗处方
     */
    @Override
    public CpoePrescription selectCpoePrescriptionById(String id)
    {
        return cpoePrescriptionMapper.selectCpoePrescriptionById(id);
    }

    /**
     * 查询住院治疗处方列表
     * 
     * @param cpoePrescription 住院治疗处方
     * @return 住院治疗处方
     */
    @Override
    public List<CpoePrescription> selectCpoePrescriptionList(CpoePrescription cpoePrescription)
    {
        return cpoePrescriptionMapper.selectCpoePrescriptionList(cpoePrescription);
    }

    /**
     * 新增住院治疗处方
     * 
     * @param cpoePrescription 住院治疗处方
     * @return 结果
     */
    @Override
    public int insertCpoePrescription(CpoePrescription cpoePrescription)
    {
        cpoePrescription.setCreateTime(DateUtils.getNowDate());
        return cpoePrescriptionMapper.insertCpoePrescription(cpoePrescription);
    }

    /**
     * 修改住院治疗处方
     * 
     * @param cpoePrescription 住院治疗处方
     * @return 结果
     */
    @Override
    public int updateCpoePrescription(CpoePrescription cpoePrescription)
    {
        return cpoePrescriptionMapper.updateCpoePrescription(cpoePrescription);
    }

    /**
     * 批量删除住院治疗处方
     * 
     * @param ids 需要删除的住院治疗处方主键
     * @return 结果
     */
    @Override
    public int deleteCpoePrescriptionByIds(String[] ids)
    {
        return cpoePrescriptionMapper.deleteCpoePrescriptionByIds(ids);
    }

    /**
     * 删除住院治疗处方信息
     * 
     * @param id 住院治疗处方主键
     * @return 结果
     */
    @Override
    public int deleteCpoePrescriptionById(String id)
    {
        return cpoePrescriptionMapper.deleteCpoePrescriptionById(id);
    }
}
