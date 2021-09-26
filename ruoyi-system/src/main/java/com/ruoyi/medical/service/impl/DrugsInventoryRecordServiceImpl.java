package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.DrugsInventoryRecordMapper;
import com.ruoyi.medical.domain.DrugsInventoryRecord;
import com.ruoyi.medical.service.IDrugsInventoryRecordService;

/**
 * 盘点记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class DrugsInventoryRecordServiceImpl implements IDrugsInventoryRecordService 
{
    @Autowired
    private DrugsInventoryRecordMapper drugsInventoryRecordMapper;

    /**
     * 查询盘点记录
     * 
     * @param id 盘点记录主键
     * @return 盘点记录
     */
    @Override
    public DrugsInventoryRecord selectDrugsInventoryRecordById(String id)
    {
        return drugsInventoryRecordMapper.selectDrugsInventoryRecordById(id);
    }

    /**
     * 查询盘点记录列表
     * 
     * @param drugsInventoryRecord 盘点记录
     * @return 盘点记录
     */
    @Override
    public List<DrugsInventoryRecord> selectDrugsInventoryRecordList(DrugsInventoryRecord drugsInventoryRecord)
    {
        return drugsInventoryRecordMapper.selectDrugsInventoryRecordList(drugsInventoryRecord);
    }

    /**
     * 新增盘点记录
     * 
     * @param drugsInventoryRecord 盘点记录
     * @return 结果
     */
    @Override
    public int insertDrugsInventoryRecord(DrugsInventoryRecord drugsInventoryRecord)
    {
        drugsInventoryRecord.setCreateTime(DateUtils.getNowDate());
        return drugsInventoryRecordMapper.insertDrugsInventoryRecord(drugsInventoryRecord);
    }

    /**
     * 修改盘点记录
     * 
     * @param drugsInventoryRecord 盘点记录
     * @return 结果
     */
    @Override
    public int updateDrugsInventoryRecord(DrugsInventoryRecord drugsInventoryRecord)
    {
        return drugsInventoryRecordMapper.updateDrugsInventoryRecord(drugsInventoryRecord);
    }

    /**
     * 批量删除盘点记录
     * 
     * @param ids 需要删除的盘点记录主键
     * @return 结果
     */
    @Override
    public int deleteDrugsInventoryRecordByIds(String[] ids)
    {
        return drugsInventoryRecordMapper.deleteDrugsInventoryRecordByIds(ids);
    }

    /**
     * 删除盘点记录信息
     * 
     * @param id 盘点记录主键
     * @return 结果
     */
    @Override
    public int deleteDrugsInventoryRecordById(String id)
    {
        return drugsInventoryRecordMapper.deleteDrugsInventoryRecordById(id);
    }
}
