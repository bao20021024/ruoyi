package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.DrugsPurchaseMapper;
import com.ruoyi.medical.domain.DrugsPurchase;
import com.ruoyi.medical.service.IDrugsPurchaseService;

/**
 * 药品采购信息Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class DrugsPurchaseServiceImpl implements IDrugsPurchaseService 
{
    @Autowired
    private DrugsPurchaseMapper drugsPurchaseMapper;

    /**
     * 查询药品采购信息
     * 
     * @param id 药品采购信息主键
     * @return 药品采购信息
     */
    @Override
    public DrugsPurchase selectDrugsPurchaseById(String id)
    {
        return drugsPurchaseMapper.selectDrugsPurchaseById(id);
    }

    /**
     * 查询药品采购信息列表
     * 
     * @param drugsPurchase 药品采购信息
     * @return 药品采购信息
     */
    @Override
    public List<DrugsPurchase> selectDrugsPurchaseList(DrugsPurchase drugsPurchase)
    {
        return drugsPurchaseMapper.selectDrugsPurchaseList(drugsPurchase);
    }

    /**
     * 新增药品采购信息
     * 
     * @param drugsPurchase 药品采购信息
     * @return 结果
     */
    @Override
    public int insertDrugsPurchase(DrugsPurchase drugsPurchase)
    {
        return drugsPurchaseMapper.insertDrugsPurchase(drugsPurchase);
    }

    /**
     * 修改药品采购信息
     * 
     * @param drugsPurchase 药品采购信息
     * @return 结果
     */
    @Override
    public int updateDrugsPurchase(DrugsPurchase drugsPurchase)
    {
        return drugsPurchaseMapper.updateDrugsPurchase(drugsPurchase);
    }

    /**
     * 批量删除药品采购信息
     * 
     * @param ids 需要删除的药品采购信息主键
     * @return 结果
     */
    @Override
    public int deleteDrugsPurchaseByIds(String[] ids)
    {
        return drugsPurchaseMapper.deleteDrugsPurchaseByIds(ids);
    }

    /**
     * 删除药品采购信息信息
     * 
     * @param id 药品采购信息主键
     * @return 结果
     */
    @Override
    public int deleteDrugsPurchaseById(String id)
    {
        return drugsPurchaseMapper.deleteDrugsPurchaseById(id);
    }
}
