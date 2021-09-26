package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CostBill;

/**
 * 患者费用账单Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICostBillService 
{
    /**
     * 查询患者费用账单
     * 
     * @param id 患者费用账单主键
     * @return 患者费用账单
     */
    public CostBill selectCostBillById(String id);

    /**
     * 查询患者费用账单列表
     * 
     * @param costBill 患者费用账单
     * @return 患者费用账单集合
     */
    public List<CostBill> selectCostBillList(CostBill costBill);

    /**
     * 新增患者费用账单
     * 
     * @param costBill 患者费用账单
     * @return 结果
     */
    public int insertCostBill(CostBill costBill);

    /**
     * 修改患者费用账单
     * 
     * @param costBill 患者费用账单
     * @return 结果
     */
    public int updateCostBill(CostBill costBill);

    /**
     * 批量删除患者费用账单
     * 
     * @param ids 需要删除的患者费用账单主键集合
     * @return 结果
     */
    public int deleteCostBillByIds(String[] ids);

    /**
     * 删除患者费用账单信息
     * 
     * @param id 患者费用账单主键
     * @return 结果
     */
    public int deleteCostBillById(String id);
}
