package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.DrugsPurchase;

/**
 * 药品采购信息Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface IDrugsPurchaseService 
{
    /**
     * 查询药品采购信息
     * 
     * @param id 药品采购信息主键
     * @return 药品采购信息
     */
    public DrugsPurchase selectDrugsPurchaseById(String id);

    /**
     * 查询药品采购信息列表
     * 
     * @param drugsPurchase 药品采购信息
     * @return 药品采购信息集合
     */
    public List<DrugsPurchase> selectDrugsPurchaseList(DrugsPurchase drugsPurchase);

    /**
     * 新增药品采购信息
     * 
     * @param drugsPurchase 药品采购信息
     * @return 结果
     */
    public int insertDrugsPurchase(DrugsPurchase drugsPurchase);

    /**
     * 修改药品采购信息
     * 
     * @param drugsPurchase 药品采购信息
     * @return 结果
     */
    public int updateDrugsPurchase(DrugsPurchase drugsPurchase);

    /**
     * 批量删除药品采购信息
     * 
     * @param ids 需要删除的药品采购信息主键集合
     * @return 结果
     */
    public int deleteDrugsPurchaseByIds(String[] ids);

    /**
     * 删除药品采购信息信息
     * 
     * @param id 药品采购信息主键
     * @return 结果
     */
    public int deleteDrugsPurchaseById(String id);
}
