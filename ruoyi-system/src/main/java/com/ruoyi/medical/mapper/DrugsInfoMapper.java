package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.DrugsInfo;

/**
 * 药品Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface DrugsInfoMapper 
{
    /**
     * 查询药品
     * 
     * @param id 药品主键
     * @return 药品
     */
    public DrugsInfo selectDrugsInfoById(String id);

    /**
     * 查询药品列表
     * 
     * @param drugsInfo 药品
     * @return 药品集合
     */
    public List<DrugsInfo> selectDrugsInfoList(DrugsInfo drugsInfo);

    /**
     * 新增药品
     * 
     * @param drugsInfo 药品
     * @return 结果
     */
    public int insertDrugsInfo(DrugsInfo drugsInfo);

    /**
     * 修改药品
     * 
     * @param drugsInfo 药品
     * @return 结果
     */
    public int updateDrugsInfo(DrugsInfo drugsInfo);

    /**
     * 删除药品
     * 
     * @param id 药品主键
     * @return 结果
     */
    public int deleteDrugsInfoById(String id);

    /**
     * 批量删除药品
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDrugsInfoByIds(String[] ids);
}
