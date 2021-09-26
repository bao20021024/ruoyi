package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CpoeBed;

/**
 * 床位记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICpoeBedService 
{
    /**
     * 查询床位记录
     * 
     * @param id 床位记录主键
     * @return 床位记录
     */
    public CpoeBed selectCpoeBedById(String id);

    /**
     * 查询床位记录列表
     * 
     * @param cpoeBed 床位记录
     * @return 床位记录集合
     */
    public List<CpoeBed> selectCpoeBedList(CpoeBed cpoeBed);

    /**
     * 新增床位记录
     * 
     * @param cpoeBed 床位记录
     * @return 结果
     */
    public int insertCpoeBed(CpoeBed cpoeBed);

    /**
     * 修改床位记录
     * 
     * @param cpoeBed 床位记录
     * @return 结果
     */
    public int updateCpoeBed(CpoeBed cpoeBed);

    /**
     * 批量删除床位记录
     * 
     * @param ids 需要删除的床位记录主键集合
     * @return 结果
     */
    public int deleteCpoeBedByIds(String[] ids);

    /**
     * 删除床位记录信息
     * 
     * @param id 床位记录主键
     * @return 结果
     */
    public int deleteCpoeBedById(String id);
}
