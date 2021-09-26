package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.DrugsInventoryRecord;

/**
 * 盘点记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface IDrugsInventoryRecordService 
{
    /**
     * 查询盘点记录
     * 
     * @param id 盘点记录主键
     * @return 盘点记录
     */
    public DrugsInventoryRecord selectDrugsInventoryRecordById(String id);

    /**
     * 查询盘点记录列表
     * 
     * @param drugsInventoryRecord 盘点记录
     * @return 盘点记录集合
     */
    public List<DrugsInventoryRecord> selectDrugsInventoryRecordList(DrugsInventoryRecord drugsInventoryRecord);

    /**
     * 新增盘点记录
     * 
     * @param drugsInventoryRecord 盘点记录
     * @return 结果
     */
    public int insertDrugsInventoryRecord(DrugsInventoryRecord drugsInventoryRecord);

    /**
     * 修改盘点记录
     * 
     * @param drugsInventoryRecord 盘点记录
     * @return 结果
     */
    public int updateDrugsInventoryRecord(DrugsInventoryRecord drugsInventoryRecord);

    /**
     * 批量删除盘点记录
     * 
     * @param ids 需要删除的盘点记录主键集合
     * @return 结果
     */
    public int deleteDrugsInventoryRecordByIds(String[] ids);

    /**
     * 删除盘点记录信息
     * 
     * @param id 盘点记录主键
     * @return 结果
     */
    public int deleteDrugsInventoryRecordById(String id);
}
