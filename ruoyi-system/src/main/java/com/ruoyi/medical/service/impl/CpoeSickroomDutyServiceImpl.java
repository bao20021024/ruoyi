package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoeSickroomDutyMapper;
import com.ruoyi.medical.domain.CpoeSickroomDuty;
import com.ruoyi.medical.service.ICpoeSickroomDutyService;

/**
 * 病房值班记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoeSickroomDutyServiceImpl implements ICpoeSickroomDutyService 
{
    @Autowired
    private CpoeSickroomDutyMapper cpoeSickroomDutyMapper;

    /**
     * 查询病房值班记录
     * 
     * @param id 病房值班记录主键
     * @return 病房值班记录
     */
    @Override
    public CpoeSickroomDuty selectCpoeSickroomDutyById(String id)
    {
        return cpoeSickroomDutyMapper.selectCpoeSickroomDutyById(id);
    }

    /**
     * 查询病房值班记录列表
     * 
     * @param cpoeSickroomDuty 病房值班记录
     * @return 病房值班记录
     */
    @Override
    public List<CpoeSickroomDuty> selectCpoeSickroomDutyList(CpoeSickroomDuty cpoeSickroomDuty)
    {
        return cpoeSickroomDutyMapper.selectCpoeSickroomDutyList(cpoeSickroomDuty);
    }

    /**
     * 新增病房值班记录
     * 
     * @param cpoeSickroomDuty 病房值班记录
     * @return 结果
     */
    @Override
    public int insertCpoeSickroomDuty(CpoeSickroomDuty cpoeSickroomDuty)
    {
        return cpoeSickroomDutyMapper.insertCpoeSickroomDuty(cpoeSickroomDuty);
    }

    /**
     * 修改病房值班记录
     * 
     * @param cpoeSickroomDuty 病房值班记录
     * @return 结果
     */
    @Override
    public int updateCpoeSickroomDuty(CpoeSickroomDuty cpoeSickroomDuty)
    {
        return cpoeSickroomDutyMapper.updateCpoeSickroomDuty(cpoeSickroomDuty);
    }

    /**
     * 批量删除病房值班记录
     * 
     * @param ids 需要删除的病房值班记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeSickroomDutyByIds(String[] ids)
    {
        return cpoeSickroomDutyMapper.deleteCpoeSickroomDutyByIds(ids);
    }

    /**
     * 删除病房值班记录信息
     * 
     * @param id 病房值班记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeSickroomDutyById(String id)
    {
        return cpoeSickroomDutyMapper.deleteCpoeSickroomDutyById(id);
    }
}
