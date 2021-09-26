package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoeBedMapper;
import com.ruoyi.medical.domain.CpoeBed;
import com.ruoyi.medical.service.ICpoeBedService;

/**
 * 床位记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoeBedServiceImpl implements ICpoeBedService 
{
    @Autowired
    private CpoeBedMapper cpoeBedMapper;

    /**
     * 查询床位记录
     * 
     * @param id 床位记录主键
     * @return 床位记录
     */
    @Override
    public CpoeBed selectCpoeBedById(String id)
    {
        return cpoeBedMapper.selectCpoeBedById(id);
    }

    /**
     * 查询床位记录列表
     * 
     * @param cpoeBed 床位记录
     * @return 床位记录
     */
    @Override
    public List<CpoeBed> selectCpoeBedList(CpoeBed cpoeBed)
    {
        return cpoeBedMapper.selectCpoeBedList(cpoeBed);
    }

    /**
     * 新增床位记录
     * 
     * @param cpoeBed 床位记录
     * @return 结果
     */
    @Override
    public int insertCpoeBed(CpoeBed cpoeBed)
    {
        return cpoeBedMapper.insertCpoeBed(cpoeBed);
    }

    /**
     * 修改床位记录
     * 
     * @param cpoeBed 床位记录
     * @return 结果
     */
    @Override
    public int updateCpoeBed(CpoeBed cpoeBed)
    {
        return cpoeBedMapper.updateCpoeBed(cpoeBed);
    }

    /**
     * 批量删除床位记录
     * 
     * @param ids 需要删除的床位记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeBedByIds(String[] ids)
    {
        return cpoeBedMapper.deleteCpoeBedByIds(ids);
    }

    /**
     * 删除床位记录信息
     * 
     * @param id 床位记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeBedById(String id)
    {
        return cpoeBedMapper.deleteCpoeBedById(id);
    }
}
