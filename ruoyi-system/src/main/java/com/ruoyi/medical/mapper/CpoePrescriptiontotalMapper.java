package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.CpoePrescriptiontotal;

/**
 * 住院治疗处方总Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface CpoePrescriptiontotalMapper 
{
    /**
     * 查询住院治疗处方总
     * 
     * @param id 住院治疗处方总主键
     * @return 住院治疗处方总
     */
    public CpoePrescriptiontotal selectCpoePrescriptiontotalById(String id);

    /**
     * 查询住院治疗处方总列表
     * 
     * @param cpoePrescriptiontotal 住院治疗处方总
     * @return 住院治疗处方总集合
     */
    public List<CpoePrescriptiontotal> selectCpoePrescriptiontotalList(CpoePrescriptiontotal cpoePrescriptiontotal);

    /**
     * 新增住院治疗处方总
     * 
     * @param cpoePrescriptiontotal 住院治疗处方总
     * @return 结果
     */
    public int insertCpoePrescriptiontotal(CpoePrescriptiontotal cpoePrescriptiontotal);

    /**
     * 修改住院治疗处方总
     * 
     * @param cpoePrescriptiontotal 住院治疗处方总
     * @return 结果
     */
    public int updateCpoePrescriptiontotal(CpoePrescriptiontotal cpoePrescriptiontotal);

    /**
     * 删除住院治疗处方总
     * 
     * @param id 住院治疗处方总主键
     * @return 结果
     */
    public int deleteCpoePrescriptiontotalById(String id);

    /**
     * 批量删除住院治疗处方总
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCpoePrescriptiontotalByIds(String[] ids);
}
