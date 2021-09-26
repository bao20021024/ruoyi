package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoePrescriptiontotalMapper;
import com.ruoyi.medical.domain.CpoePrescriptiontotal;
import com.ruoyi.medical.service.ICpoePrescriptiontotalService;

/**
 * 住院治疗处方总Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoePrescriptiontotalServiceImpl implements ICpoePrescriptiontotalService 
{
    @Autowired
    private CpoePrescriptiontotalMapper cpoePrescriptiontotalMapper;

    /**
     * 查询住院治疗处方总
     * 
     * @param id 住院治疗处方总主键
     * @return 住院治疗处方总
     */
    @Override
    public CpoePrescriptiontotal selectCpoePrescriptiontotalById(String id)
    {
        return cpoePrescriptiontotalMapper.selectCpoePrescriptiontotalById(id);
    }

    /**
     * 查询住院治疗处方总列表
     * 
     * @param cpoePrescriptiontotal 住院治疗处方总
     * @return 住院治疗处方总
     */
    @Override
    public List<CpoePrescriptiontotal> selectCpoePrescriptiontotalList(CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        return cpoePrescriptiontotalMapper.selectCpoePrescriptiontotalList(cpoePrescriptiontotal);
    }

    /**
     * 新增住院治疗处方总
     * 
     * @param cpoePrescriptiontotal 住院治疗处方总
     * @return 结果
     */
    @Override
    public int insertCpoePrescriptiontotal(CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        cpoePrescriptiontotal.setCreateTime(DateUtils.getNowDate());
        return cpoePrescriptiontotalMapper.insertCpoePrescriptiontotal(cpoePrescriptiontotal);
    }

    /**
     * 修改住院治疗处方总
     * 
     * @param cpoePrescriptiontotal 住院治疗处方总
     * @return 结果
     */
    @Override
    public int updateCpoePrescriptiontotal(CpoePrescriptiontotal cpoePrescriptiontotal)
    {
        return cpoePrescriptiontotalMapper.updateCpoePrescriptiontotal(cpoePrescriptiontotal);
    }

    /**
     * 批量删除住院治疗处方总
     * 
     * @param ids 需要删除的住院治疗处方总主键
     * @return 结果
     */
    @Override
    public int deleteCpoePrescriptiontotalByIds(String[] ids)
    {
        return cpoePrescriptiontotalMapper.deleteCpoePrescriptiontotalByIds(ids);
    }

    /**
     * 删除住院治疗处方总信息
     * 
     * @param id 住院治疗处方总主键
     * @return 结果
     */
    @Override
    public int deleteCpoePrescriptiontotalById(String id)
    {
        return cpoePrescriptiontotalMapper.deleteCpoePrescriptiontotalById(id);
    }
}
