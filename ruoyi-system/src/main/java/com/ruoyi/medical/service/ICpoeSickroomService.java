package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CpoeSickroom;

/**
 * 病房记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICpoeSickroomService 
{
    /**
     * 查询病房记录
     * 
     * @param id 病房记录主键
     * @return 病房记录
     */
    public CpoeSickroom selectCpoeSickroomById(String id);

    /**
     * 查询病房记录列表
     * 
     * @param cpoeSickroom 病房记录
     * @return 病房记录集合
     */
    public List<CpoeSickroom> selectCpoeSickroomList(CpoeSickroom cpoeSickroom);

    /**
     * 新增病房记录
     * 
     * @param cpoeSickroom 病房记录
     * @return 结果
     */
    public int insertCpoeSickroom(CpoeSickroom cpoeSickroom);

    /**
     * 修改病房记录
     * 
     * @param cpoeSickroom 病房记录
     * @return 结果
     */
    public int updateCpoeSickroom(CpoeSickroom cpoeSickroom);

    /**
     * 批量删除病房记录
     * 
     * @param ids 需要删除的病房记录主键集合
     * @return 结果
     */
    public int deleteCpoeSickroomByIds(String[] ids);

    /**
     * 删除病房记录信息
     * 
     * @param id 病房记录主键
     * @return 结果
     */
    public int deleteCpoeSickroomById(String id);
}
