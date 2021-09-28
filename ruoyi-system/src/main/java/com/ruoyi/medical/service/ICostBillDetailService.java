package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CostBillDetail;

/**
 * 患者费用明细Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICostBillDetailService 
{
    /**
     * 查询患者费用明细
     * 
     * @param id 患者费用明细主键
     * @return 患者费用明细
     */
    public CostBillDetail selectCostBillDetailById(String id);

    /**
     * 查询患者费用明细列表
     * 
     * @param costBillDetail 患者费用明细
     * @return 患者费用明细集合
     */
    public List<CostBillDetail> selectCostBillDetailList(CostBillDetail costBillDetail);

    /**
     * 新增患者费用明细
     * 
     * @param costBillDetail 患者费用明细
     * @return 结果
     */
    public int insertCostBillDetail(CostBillDetail costBillDetail);

    /**
     * 修改患者费用明细
     * 
     * @param costBillDetail 患者费用明细
     * @return 结果
     */
    public int updateCostBillDetail(CostBillDetail costBillDetail);

    /**
     * 批量删除患者费用明细
     * 
     * @param ids 需要删除的患者费用明细主键集合
     * @return 结果
     */
    public int deleteCostBillDetailByIds(String[] ids);

    /**
     * 删除患者费用明细信息
     * 
     * @param id 患者费用明细主键
     * @return 结果
     */
    public int deleteCostBillDetailById(String id);

    /**
     * 根据患者费用账单id查询患者费用明细列表
     *
     * @param id 患者费用账单id
     * @return 患者费用明细集合
     */
    public List<CostBillDetail> selectByBillid(String id);
}
