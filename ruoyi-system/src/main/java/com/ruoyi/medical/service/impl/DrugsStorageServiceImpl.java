package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.DrugsStorageMapper;
import com.ruoyi.medical.domain.DrugsStorage;
import com.ruoyi.medical.service.IDrugsStorageService;

/**
 * 药库库存Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class DrugsStorageServiceImpl implements IDrugsStorageService 
{
    @Autowired
    private DrugsStorageMapper drugsStorageMapper;

    /**
     * 查询药库库存
     * 
     * @param id 药库库存主键
     * @return 药库库存
     */
    @Override
    public DrugsStorage selectDrugsStorageById(String id)
    {
        return drugsStorageMapper.selectDrugsStorageById(id);
    }

    /**
     * 查询药库库存列表
     * 
     * @param drugsStorage 药库库存
     * @return 药库库存
     */
    @Override
    public List<DrugsStorage> selectDrugsStorageList(DrugsStorage drugsStorage)
    {
        return drugsStorageMapper.selectDrugsStorageList(drugsStorage);
    }

    /**
     * 新增药库库存
     * 
     * @param drugsStorage 药库库存
     * @return 结果
     */
    @Override
    public int insertDrugsStorage(DrugsStorage drugsStorage)
    {
        return drugsStorageMapper.insertDrugsStorage(drugsStorage);
    }

    /**
     * 修改药库库存
     * 
     * @param drugsStorage 药库库存
     * @return 结果
     */
    @Override
    public int updateDrugsStorage(DrugsStorage drugsStorage)
    {
        return drugsStorageMapper.updateDrugsStorage(drugsStorage);
    }

    /**
     * 批量删除药库库存
     * 
     * @param ids 需要删除的药库库存主键
     * @return 结果
     */
    @Override
    public int deleteDrugsStorageByIds(String[] ids)
    {
        return drugsStorageMapper.deleteDrugsStorageByIds(ids);
    }

    /**
     * 删除药库库存信息
     * 
     * @param id 药库库存主键
     * @return 结果
     */
    @Override
    public int deleteDrugsStorageById(String id)
    {
        return drugsStorageMapper.deleteDrugsStorageById(id);
    }
}
