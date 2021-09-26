package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.TMedicalDoMapper;
import com.ruoyi.medical.domain.TMedicalDo;
import com.ruoyi.medical.service.ITMedicalDoService;

/**
 * 操作记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-24
 */
@Service
public class TMedicalDoServiceImpl implements ITMedicalDoService 
{
    @Autowired
    private TMedicalDoMapper tMedicalDoMapper;

    /**
     * 查询操作记录
     * 
     * @param id 操作记录主键
     * @return 操作记录
     */
    @Override
    public TMedicalDo selectTMedicalDoById(String id)
    {
        return tMedicalDoMapper.selectTMedicalDoById(id);
    }

    /**
     * 查询操作记录列表
     * 
     * @param tMedicalDo 操作记录
     * @return 操作记录
     */
    @Override
    public List<TMedicalDo> selectTMedicalDoList(TMedicalDo tMedicalDo)
    {
        return tMedicalDoMapper.selectTMedicalDoList(tMedicalDo);
    }

    /**
     * 新增操作记录
     * 
     * @param tMedicalDo 操作记录
     * @return 结果
     */
    @Override
    public int insertTMedicalDo(TMedicalDo tMedicalDo)
    {
        return tMedicalDoMapper.insertTMedicalDo(tMedicalDo);
    }

    /**
     * 修改操作记录
     * 
     * @param tMedicalDo 操作记录
     * @return 结果
     */
    @Override
    public int updateTMedicalDo(TMedicalDo tMedicalDo)
    {
        return tMedicalDoMapper.updateTMedicalDo(tMedicalDo);
    }

    /**
     * 批量删除操作记录
     * 
     * @param ids 需要删除的操作记录主键
     * @return 结果
     */
    @Override
    public int deleteTMedicalDoByIds(String[] ids)
    {
        return tMedicalDoMapper.deleteTMedicalDoByIds(ids);
    }

    /**
     * 删除操作记录信息
     * 
     * @param id 操作记录主键
     * @return 结果
     */
    @Override
    public int deleteTMedicalDoById(String id)
    {
        return tMedicalDoMapper.deleteTMedicalDoById(id);
    }
}
