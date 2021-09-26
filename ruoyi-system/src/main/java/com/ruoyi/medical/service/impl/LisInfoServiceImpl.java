package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.LisInfoMapper;
import com.ruoyi.medical.domain.LisInfo;
import com.ruoyi.medical.service.ILisInfoService;

/**
 * Lis检验信息Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class LisInfoServiceImpl implements ILisInfoService 
{
    @Autowired
    private LisInfoMapper lisInfoMapper;

    /**
     * 查询Lis检验信息
     * 
     * @param id Lis检验信息主键
     * @return Lis检验信息
     */
    @Override
    public LisInfo selectLisInfoById(String id)
    {
        return lisInfoMapper.selectLisInfoById(id);
    }

    /**
     * 查询Lis检验信息列表
     * 
     * @param lisInfo Lis检验信息
     * @return Lis检验信息
     */
    @Override
    public List<LisInfo> selectLisInfoList(LisInfo lisInfo)
    {
        return lisInfoMapper.selectLisInfoList(lisInfo);
    }

    /**
     * 新增Lis检验信息
     * 
     * @param lisInfo Lis检验信息
     * @return 结果
     */
    @Override
    public int insertLisInfo(LisInfo lisInfo)
    {
        lisInfo.setCreateTime(DateUtils.getNowDate());
        return lisInfoMapper.insertLisInfo(lisInfo);
    }

    /**
     * 修改Lis检验信息
     * 
     * @param lisInfo Lis检验信息
     * @return 结果
     */
    @Override
    public int updateLisInfo(LisInfo lisInfo)
    {
        return lisInfoMapper.updateLisInfo(lisInfo);
    }

    /**
     * 批量删除Lis检验信息
     * 
     * @param ids 需要删除的Lis检验信息主键
     * @return 结果
     */
    @Override
    public int deleteLisInfoByIds(String[] ids)
    {
        return lisInfoMapper.deleteLisInfoByIds(ids);
    }

    /**
     * 删除Lis检验信息信息
     * 
     * @param id Lis检验信息主键
     * @return 结果
     */
    @Override
    public int deleteLisInfoById(String id)
    {
        return lisInfoMapper.deleteLisInfoById(id);
    }
}
