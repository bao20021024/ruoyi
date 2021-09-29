package com.ruoyi.medical.mapper;

import java.util.List;

import com.ruoyi.medical.domain.CpoeSickroom;

/**
 * 病房记录Mapper接口
 *
 * @author bao
 * @date 2021-09-23
 */
public interface CpoeSickroomMapper {
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
     * 删除病房记录
     *
     * @param id 病房记录主键
     * @return 结果
     */
    public int deleteCpoeSickroomById(String id);

    /**
     * 批量删除病房记录
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCpoeSickroomByIds(String[] ids);

    /**
     * 查询所有尚未分配的床铺
     *
     * @param value 数据字典的值
     * @return尚未分配的床铺集合
     */
    public List<CpoeSickroom> selectList(String value);
}
