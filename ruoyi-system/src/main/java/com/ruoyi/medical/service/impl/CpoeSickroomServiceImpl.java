package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CpoeSickroomMapper;
import com.ruoyi.medical.domain.CpoeSickroom;
import com.ruoyi.medical.service.ICpoeSickroomService;

/**
 * 病房记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CpoeSickroomServiceImpl implements ICpoeSickroomService 
{
    @Autowired
    private CpoeSickroomMapper cpoeSickroomMapper;

    /**
     * 查询病房记录
     * 
     * @param id 病房记录主键
     * @return 病房记录
     */
    @Override
    public CpoeSickroom selectCpoeSickroomById(String id)
    {
        return cpoeSickroomMapper.selectCpoeSickroomById(id);
    }

    /**
     * 查询病房记录列表
     * 
     * @param cpoeSickroom 病房记录
     * @return 病房记录
     */
    @Override
    public List<CpoeSickroom> selectCpoeSickroomList(CpoeSickroom cpoeSickroom)
    {
        return cpoeSickroomMapper.selectCpoeSickroomList(cpoeSickroom);
    }

    /**
     * 新增病房记录
     * 
     * @param cpoeSickroom 病房记录
     * @return 结果
     */
    @Override
    public int insertCpoeSickroom(CpoeSickroom cpoeSickroom)
    {
        return cpoeSickroomMapper.insertCpoeSickroom(cpoeSickroom);
    }

    /**
     * 修改病房记录
     * 
     * @param cpoeSickroom 病房记录
     * @return 结果
     */
    @Override
    public int updateCpoeSickroom(CpoeSickroom cpoeSickroom)
    {
        return cpoeSickroomMapper.updateCpoeSickroom(cpoeSickroom);
    }

    /**
     * 批量删除病房记录
     * 
     * @param ids 需要删除的病房记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeSickroomByIds(String[] ids)
    {
        return cpoeSickroomMapper.deleteCpoeSickroomByIds(ids);
    }

    /**
     * 删除病房记录信息
     * 
     * @param id 病房记录主键
     * @return 结果
     */
    @Override
    public int deleteCpoeSickroomById(String id)
    {
        return cpoeSickroomMapper.deleteCpoeSickroomById(id);
    }
}
