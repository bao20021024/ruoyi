package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.TMedicalDo;

/**
 * 操作记录Mapper接口
 * 
 * @author bao
 * @date 2021-09-24
 */
public interface TMedicalDoMapper 
{
    /**
     * 查询操作记录
     * 
     * @param id 操作记录主键
     * @return 操作记录
     */
    public TMedicalDo selectTMedicalDoById(String id);

    /**
     * 查询操作记录列表
     * 
     * @param tMedicalDo 操作记录
     * @return 操作记录集合
     */
    public List<TMedicalDo> selectTMedicalDoList(TMedicalDo tMedicalDo);

    /**
     * 新增操作记录
     * 
     * @param tMedicalDo 操作记录
     * @return 结果
     */
    public int insertTMedicalDo(TMedicalDo tMedicalDo);

    /**
     * 修改操作记录
     * 
     * @param tMedicalDo 操作记录
     * @return 结果
     */
    public int updateTMedicalDo(TMedicalDo tMedicalDo);

    /**
     * 删除操作记录
     * 
     * @param id 操作记录主键
     * @return 结果
     */
    public int deleteTMedicalDoById(String id);

    /**
     * 批量删除操作记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTMedicalDoByIds(String[] ids);

}
