package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CostPersonArchives;

/**
 * 个人档案Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICostPersonArchivesService 
{
    /**
     * 查询个人档案
     * 
     * @param id 个人档案主键
     * @return 个人档案
     */
    public CostPersonArchives selectCostPersonArchivesById(String id);

    /**
     * 查询个人档案列表
     * 
     * @param costPersonArchives 个人档案
     * @return 个人档案集合
     */
    public List<CostPersonArchives> selectCostPersonArchivesList(CostPersonArchives costPersonArchives);

    /**
     * 新增个人档案
     * 
     * @param costPersonArchives 个人档案
     * @return 结果
     */
    public int insertCostPersonArchives(CostPersonArchives costPersonArchives);

    /**
     * 修改个人档案
     * 
     * @param costPersonArchives 个人档案
     * @return 结果
     */
    public int updateCostPersonArchives(CostPersonArchives costPersonArchives);

    /**
     * 批量删除个人档案
     * 
     * @param ids 需要删除的个人档案主键集合
     * @return 结果
     */
    public int deleteCostPersonArchivesByIds(String[] ids);

    /**
     * 删除个人档案信息
     * 
     * @param id 个人档案主键
     * @return 结果
     */
    public int deleteCostPersonArchivesById(String id);
}
