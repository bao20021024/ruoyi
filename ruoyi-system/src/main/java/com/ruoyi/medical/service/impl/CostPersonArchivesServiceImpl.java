package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CostPersonArchivesMapper;
import com.ruoyi.medical.domain.CostPersonArchives;
import com.ruoyi.medical.service.ICostPersonArchivesService;

/**
 * 个人档案Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CostPersonArchivesServiceImpl implements ICostPersonArchivesService 
{
    @Autowired
    private CostPersonArchivesMapper costPersonArchivesMapper;

    /**
     * 查询个人档案
     * 
     * @param id 个人档案主键
     * @return 个人档案
     */
    @Override
    public CostPersonArchives selectCostPersonArchivesById(String id)
    {
        return costPersonArchivesMapper.selectCostPersonArchivesById(id);
    }

    /**
     * 查询个人档案列表
     * 
     * @param costPersonArchives 个人档案
     * @return 个人档案
     */
    @Override
    public List<CostPersonArchives> selectCostPersonArchivesList(CostPersonArchives costPersonArchives)
    {
        return costPersonArchivesMapper.selectCostPersonArchivesList(costPersonArchives);
    }

    /**
     * 新增个人档案
     * 
     * @param costPersonArchives 个人档案
     * @return 结果
     */
    @Override
    public int insertCostPersonArchives(CostPersonArchives costPersonArchives)
    {
        return costPersonArchivesMapper.insertCostPersonArchives(costPersonArchives);
    }

    /**
     * 修改个人档案
     * 
     * @param costPersonArchives 个人档案
     * @return 结果
     */
    @Override
    public int updateCostPersonArchives(CostPersonArchives costPersonArchives)
    {
        return costPersonArchivesMapper.updateCostPersonArchives(costPersonArchives);
    }

    /**
     * 批量删除个人档案
     * 
     * @param ids 需要删除的个人档案主键
     * @return 结果
     */
    @Override
    public int deleteCostPersonArchivesByIds(String[] ids)
    {
        return costPersonArchivesMapper.deleteCostPersonArchivesByIds(ids);
    }

    /**
     * 删除个人档案信息
     * 
     * @param id 个人档案主键
     * @return 结果
     */
    @Override
    public int deleteCostPersonArchivesById(String id)
    {
        return costPersonArchivesMapper.deleteCostPersonArchivesById(id);
    }
}
