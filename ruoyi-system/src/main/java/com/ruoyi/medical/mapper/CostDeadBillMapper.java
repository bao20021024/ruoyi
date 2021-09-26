package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.CostDeadBill;

/**
 * 医院烂账记录Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface CostDeadBillMapper 
{
    /**
     * 查询医院烂账记录
     * 
     * @param id 医院烂账记录主键
     * @return 医院烂账记录
     */
    public CostDeadBill selectCostDeadBillById(String id);

    /**
     * 查询医院烂账记录列表
     * 
     * @param costDeadBill 医院烂账记录
     * @return 医院烂账记录集合
     */
    public List<CostDeadBill> selectCostDeadBillList(CostDeadBill costDeadBill);

    /**
     * 新增医院烂账记录
     * 
     * @param costDeadBill 医院烂账记录
     * @return 结果
     */
    public int insertCostDeadBill(CostDeadBill costDeadBill);

    /**
     * 修改医院烂账记录
     * 
     * @param costDeadBill 医院烂账记录
     * @return 结果
     */
    public int updateCostDeadBill(CostDeadBill costDeadBill);

    /**
     * 删除医院烂账记录
     * 
     * @param id 医院烂账记录主键
     * @return 结果
     */
    public int deleteCostDeadBillById(String id);

    /**
     * 批量删除医院烂账记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCostDeadBillByIds(String[] ids);
}
