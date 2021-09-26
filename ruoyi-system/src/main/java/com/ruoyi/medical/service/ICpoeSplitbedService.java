package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CpoeSplitbed;

/**
 * 分床记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICpoeSplitbedService 
{
    /**
     * 查询分床记录
     * 
     * @param id 分床记录主键
     * @return 分床记录
     */
    public CpoeSplitbed selectCpoeSplitbedById(String id);

    /**
     * 查询分床记录列表
     * 
     * @param cpoeSplitbed 分床记录
     * @return 分床记录集合
     */
    public List<CpoeSplitbed> selectCpoeSplitbedList(CpoeSplitbed cpoeSplitbed);

    /**
     * 新增分床记录
     * 
     * @param cpoeSplitbed 分床记录
     * @return 结果
     */
    public int insertCpoeSplitbed(CpoeSplitbed cpoeSplitbed);

    /**
     * 修改分床记录
     * 
     * @param cpoeSplitbed 分床记录
     * @return 结果
     */
    public int updateCpoeSplitbed(CpoeSplitbed cpoeSplitbed);

    /**
     * 批量删除分床记录
     * 
     * @param ids 需要删除的分床记录主键集合
     * @return 结果
     */
    public int deleteCpoeSplitbedByIds(String[] ids);

    /**
     * 删除分床记录信息
     * 
     * @param id 分床记录主键
     * @return 结果
     */
    public int deleteCpoeSplitbedById(String id);
}
