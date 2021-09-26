package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.DrugsPharmacy;

/**
 * 药房库存Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface DrugsPharmacyMapper 
{
    /**
     * 查询药房库存
     * 
     * @param id 药房库存主键
     * @return 药房库存
     */
    public DrugsPharmacy selectDrugsPharmacyById(String id);

    /**
     * 查询药房库存列表
     * 
     * @param drugsPharmacy 药房库存
     * @return 药房库存集合
     */
    public List<DrugsPharmacy> selectDrugsPharmacyList(DrugsPharmacy drugsPharmacy);

    /**
     * 新增药房库存
     * 
     * @param drugsPharmacy 药房库存
     * @return 结果
     */
    public int insertDrugsPharmacy(DrugsPharmacy drugsPharmacy);

    /**
     * 修改药房库存
     * 
     * @param drugsPharmacy 药房库存
     * @return 结果
     */
    public int updateDrugsPharmacy(DrugsPharmacy drugsPharmacy);

    /**
     * 删除药房库存
     * 
     * @param id 药房库存主键
     * @return 结果
     */
    public int deleteDrugsPharmacyById(String id);

    /**
     * 批量删除药房库存
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDrugsPharmacyByIds(String[] ids);
}
