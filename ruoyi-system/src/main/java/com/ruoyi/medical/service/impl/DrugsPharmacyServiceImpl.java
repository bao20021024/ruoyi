package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.DrugsPharmacyMapper;
import com.ruoyi.medical.domain.DrugsPharmacy;
import com.ruoyi.medical.service.IDrugsPharmacyService;

/**
 * 药房库存Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class DrugsPharmacyServiceImpl implements IDrugsPharmacyService 
{
    @Autowired
    private DrugsPharmacyMapper drugsPharmacyMapper;

    /**
     * 查询药房库存
     * 
     * @param id 药房库存主键
     * @return 药房库存
     */
    @Override
    public DrugsPharmacy selectDrugsPharmacyById(String id)
    {
        return drugsPharmacyMapper.selectDrugsPharmacyById(id);
    }

    /**
     * 查询药房库存列表
     * 
     * @param drugsPharmacy 药房库存
     * @return 药房库存
     */
    @Override
    public List<DrugsPharmacy> selectDrugsPharmacyList(DrugsPharmacy drugsPharmacy)
    {
        return drugsPharmacyMapper.selectDrugsPharmacyList(drugsPharmacy);
    }

    /**
     * 新增药房库存
     * 
     * @param drugsPharmacy 药房库存
     * @return 结果
     */
    @Override
    public int insertDrugsPharmacy(DrugsPharmacy drugsPharmacy)
    {
        return drugsPharmacyMapper.insertDrugsPharmacy(drugsPharmacy);
    }

    /**
     * 修改药房库存
     * 
     * @param drugsPharmacy 药房库存
     * @return 结果
     */
    @Override
    public int updateDrugsPharmacy(DrugsPharmacy drugsPharmacy)
    {
        return drugsPharmacyMapper.updateDrugsPharmacy(drugsPharmacy);
    }

    /**
     * 批量删除药房库存
     * 
     * @param ids 需要删除的药房库存主键
     * @return 结果
     */
    @Override
    public int deleteDrugsPharmacyByIds(String[] ids)
    {
        return drugsPharmacyMapper.deleteDrugsPharmacyByIds(ids);
    }

    /**
     * 删除药房库存信息
     * 
     * @param id 药房库存主键
     * @return 结果
     */
    @Override
    public int deleteDrugsPharmacyById(String id)
    {
        return drugsPharmacyMapper.deleteDrugsPharmacyById(id);
    }
}
