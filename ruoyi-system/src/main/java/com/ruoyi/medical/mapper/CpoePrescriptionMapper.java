package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.CpoePrescription;

/**
 * 住院治疗处方Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface CpoePrescriptionMapper 
{
    /**
     * 查询住院治疗处方
     * 
     * @param id 住院治疗处方主键
     * @return 住院治疗处方
     */
    public CpoePrescription selectCpoePrescriptionById(String id);

    /**
     * 查询住院治疗处方列表
     * 
     * @param cpoePrescription 住院治疗处方
     * @return 住院治疗处方集合
     */
    public List<CpoePrescription> selectCpoePrescriptionList(CpoePrescription cpoePrescription);

    /**
     * 新增住院治疗处方
     * 
     * @param cpoePrescription 住院治疗处方
     * @return 结果
     */
    public int insertCpoePrescription(CpoePrescription cpoePrescription);

    /**
     * 修改住院治疗处方
     * 
     * @param cpoePrescription 住院治疗处方
     * @return 结果
     */
    public int updateCpoePrescription(CpoePrescription cpoePrescription);

    /**
     * 删除住院治疗处方
     * 
     * @param id 住院治疗处方主键
     * @return 结果
     */
    public int deleteCpoePrescriptionById(String id);

    /**
     * 批量删除住院治疗处方
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCpoePrescriptionByIds(String[] ids);
}
