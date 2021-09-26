package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoeSplitbedMapper;
import com.ruoyi.medical.domain.CpoeSplitbed;
import com.ruoyi.medical.service.ICpoeSplitbedService;

/**
 * 分床记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoeSplitbedServiceImpl implements ICpoeSplitbedService 
{
    @Autowired
    private CpoeSplitbedMapper cpoeSplitbedMapper;

    /**
     * 查询分床记录
     * 
     * @param id 分床记录主键
     * @return 分床记录
     */
    @Override
    public CpoeSplitbed selectCpoeSplitbedById(String id)
    {
        return cpoeSplitbedMapper.selectCpoeSplitbedById(id);
    }

    /**
     * 查询分床记录列表
     * 
     * @param cpoeSplitbed 分床记录
     * @return 分床记录
     */
    @Override
    public List<CpoeSplitbed> selectCpoeSplitbedList(CpoeSplitbed cpoeSplitbed)
    {
        return cpoeSplitbedMapper.selectCpoeSplitbedList(cpoeSplitbed);
    }

    /**
     * 新增分床记录
     * 
     * @param cpoeSplitbed 分床记录
     * @return 结果
     */
    @Override
    public int insertCpoeSplitbed(CpoeSplitbed cpoeSplitbed)
    {
        cpoeSplitbed.setCreateTime(DateUtils.getNowDate());
        return cpoeSplitbedMapper.insertCpoeSplitbed(cpoeSplitbed);
    }

    /**
     * 修改分床记录
     * 
     * @param cpoeSplitbed 分床记录
     * @return 结果
     */
    @Override
    public int updateCpoeSplitbed(CpoeSplitbed cpoeSplitbed)
    {
        return cpoeSplitbedMapper.updateCpoeSplitbed(cpoeSplitbed);
    }

    /**
     * 批量删除分床记录
     * 
     * @param ids 需要删除的分床记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeSplitbedByIds(String[] ids)
    {
        return cpoeSplitbedMapper.deleteCpoeSplitbedByIds(ids);
    }

    /**
     * 删除分床记录信息
     * 
     * @param id 分床记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeSplitbedById(String id)
    {
        return cpoeSplitbedMapper.deleteCpoeSplitbedById(id);
    }
}
