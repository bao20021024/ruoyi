package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.DrugsInfoMapper;
import com.ruoyi.medical.domain.DrugsInfo;
import com.ruoyi.medical.service.IDrugsInfoService;

/**
 * 药品Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class DrugsInfoServiceImpl implements IDrugsInfoService 
{
    @Autowired
    private DrugsInfoMapper drugsInfoMapper;

    /**
     * 查询药品
     * 
     * @param id 药品主键
     * @return 药品
     */
    @Override
    public DrugsInfo selectDrugsInfoById(String id)
    {
        return drugsInfoMapper.selectDrugsInfoById(id);
    }

    /**
     * 查询药品列表
     * 
     * @param drugsInfo 药品
     * @return 药品
     */
    @Override
    public List<DrugsInfo> selectDrugsInfoList(DrugsInfo drugsInfo)
    {
        return drugsInfoMapper.selectDrugsInfoList(drugsInfo);
    }

    /**
     * 新增药品
     * 
     * @param drugsInfo 药品
     * @return 结果
     */
    @Override
    public int insertDrugsInfo(DrugsInfo drugsInfo)
    {
        return drugsInfoMapper.insertDrugsInfo(drugsInfo);
    }

    /**
     * 修改药品
     * 
     * @param drugsInfo 药品
     * @return 结果
     */
    @Override
    public int updateDrugsInfo(DrugsInfo drugsInfo)
    {
        return drugsInfoMapper.updateDrugsInfo(drugsInfo);
    }

    /**
     * 批量删除药品
     * 
     * @param ids 需要删除的药品主键
     * @return 结果
     */
    @Override
    public int deleteDrugsInfoByIds(String[] ids)
    {
        return drugsInfoMapper.deleteDrugsInfoByIds(ids);
    }

    /**
     * 删除药品信息
     * 
     * @param id 药品主键
     * @return 结果
     */
    @Override
    public int deleteDrugsInfoById(String id)
    {
        return drugsInfoMapper.deleteDrugsInfoById(id);
    }
}
