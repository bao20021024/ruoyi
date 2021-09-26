package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoeDoctorsorderhandleMapper;
import com.ruoyi.medical.domain.CpoeDoctorsorderhandle;
import com.ruoyi.medical.service.ICpoeDoctorsorderhandleService;

/**
 * 医嘱执行记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoeDoctorsorderhandleServiceImpl implements ICpoeDoctorsorderhandleService 
{
    @Autowired
    private CpoeDoctorsorderhandleMapper cpoeDoctorsorderhandleMapper;

    /**
     * 查询医嘱执行记录
     * 
     * @param id 医嘱执行记录主键
     * @return 医嘱执行记录
     */
    @Override
    public CpoeDoctorsorderhandle selectCpoeDoctorsorderhandleById(String id)
    {
        return cpoeDoctorsorderhandleMapper.selectCpoeDoctorsorderhandleById(id);
    }

    /**
     * 查询医嘱执行记录列表
     * 
     * @param cpoeDoctorsorderhandle 医嘱执行记录
     * @return 医嘱执行记录
     */
    @Override
    public List<CpoeDoctorsorderhandle> selectCpoeDoctorsorderhandleList(CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        return cpoeDoctorsorderhandleMapper.selectCpoeDoctorsorderhandleList(cpoeDoctorsorderhandle);
    }

    /**
     * 新增医嘱执行记录
     * 
     * @param cpoeDoctorsorderhandle 医嘱执行记录
     * @return 结果
     */
    @Override
    public int insertCpoeDoctorsorderhandle(CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        cpoeDoctorsorderhandle.setCreateTime(DateUtils.getNowDate());
        return cpoeDoctorsorderhandleMapper.insertCpoeDoctorsorderhandle(cpoeDoctorsorderhandle);
    }

    /**
     * 修改医嘱执行记录
     * 
     * @param cpoeDoctorsorderhandle 医嘱执行记录
     * @return 结果
     */
    @Override
    public int updateCpoeDoctorsorderhandle(CpoeDoctorsorderhandle cpoeDoctorsorderhandle)
    {
        return cpoeDoctorsorderhandleMapper.updateCpoeDoctorsorderhandle(cpoeDoctorsorderhandle);
    }

    /**
     * 批量删除医嘱执行记录
     * 
     * @param ids 需要删除的医嘱执行记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeDoctorsorderhandleByIds(String[] ids)
    {
        return cpoeDoctorsorderhandleMapper.deleteCpoeDoctorsorderhandleByIds(ids);
    }

    /**
     * 删除医嘱执行记录信息
     * 
     * @param id 医嘱执行记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeDoctorsorderhandleById(String id)
    {
        return cpoeDoctorsorderhandleMapper.deleteCpoeDoctorsorderhandleById(id);
    }
}
