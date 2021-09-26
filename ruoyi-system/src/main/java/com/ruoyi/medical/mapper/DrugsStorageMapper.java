package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.DrugsStorage;

/**
 * 药库库存Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface DrugsStorageMapper 
{
    /**
     * 查询药库库存
     * 
     * @param id 药库库存主键
     * @return 药库库存
     */
    public DrugsStorage selectDrugsStorageById(String id);

    /**
     * 查询药库库存列表
     * 
     * @param drugsStorage 药库库存
     * @return 药库库存集合
     */
    public List<DrugsStorage> selectDrugsStorageList(DrugsStorage drugsStorage);

    /**
     * 新增药库库存
     * 
     * @param drugsStorage 药库库存
     * @return 结果
     */
    public int insertDrugsStorage(DrugsStorage drugsStorage);

    /**
     * 修改药库库存
     * 
     * @param drugsStorage 药库库存
     * @return 结果
     */
    public int updateDrugsStorage(DrugsStorage drugsStorage);

    /**
     * 删除药库库存
     * 
     * @param id 药库库存主键
     * @return 结果
     */
    public int deleteDrugsStorageById(String id);

    /**
     * 批量删除药库库存
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDrugsStorageByIds(String[] ids);
}
