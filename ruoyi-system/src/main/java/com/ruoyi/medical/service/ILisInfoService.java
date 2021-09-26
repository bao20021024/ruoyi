package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.LisInfo;

/**
 * Lis检验信息Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ILisInfoService 
{
    /**
     * 查询Lis检验信息
     * 
     * @param id Lis检验信息主键
     * @return Lis检验信息
     */
    public LisInfo selectLisInfoById(String id);

    /**
     * 查询Lis检验信息列表
     * 
     * @param lisInfo Lis检验信息
     * @return Lis检验信息集合
     */
    public List<LisInfo> selectLisInfoList(LisInfo lisInfo);

    /**
     * 新增Lis检验信息
     * 
     * @param lisInfo Lis检验信息
     * @return 结果
     */
    public int insertLisInfo(LisInfo lisInfo);

    /**
     * 修改Lis检验信息
     * 
     * @param lisInfo Lis检验信息
     * @return 结果
     */
    public int updateLisInfo(LisInfo lisInfo);

    /**
     * 批量删除Lis检验信息
     * 
     * @param ids 需要删除的Lis检验信息主键集合
     * @return 结果
     */
    public int deleteLisInfoByIds(String[] ids);

    /**
     * 删除Lis检验信息信息
     * 
     * @param id Lis检验信息主键
     * @return 结果
     */
    public int deleteLisInfoById(String id);
}
