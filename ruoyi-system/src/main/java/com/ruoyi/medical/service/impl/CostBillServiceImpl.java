package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CostBillMapper;
import com.ruoyi.medical.domain.CostBill;
import com.ruoyi.medical.service.ICostBillService;

/**
 * 患者费用账单Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CostBillServiceImpl implements ICostBillService 
{
    @Autowired
    private CostBillMapper costBillMapper;

    /**
     * 查询患者费用账单
     * 
     * @param id 患者费用账单主键
     * @return 患者费用账单
     */
    @Override
    public CostBill selectCostBillById(String id)
    {
        return costBillMapper.selectCostBillById(id);
    }

    /**
     * 查询患者费用账单列表
     * 
     * @param costBill 患者费用账单
     * @return 患者费用账单
     */
    @Override
    public List<CostBill> selectCostBillList(CostBill costBill)
    {
        return costBillMapper.selectCostBillList(costBill);
    }

    /**
     * 新增患者费用账单
     * 
     * @param costBill 患者费用账单
     * @return 结果
     */
    @Override
    public int insertCostBill(CostBill costBill)
    {
        costBill.setCreateTime(DateUtils.getNowDate());
        return costBillMapper.insertCostBill(costBill);
    }

    /**
     * 修改患者费用账单
     * 
     * @param costBill 患者费用账单
     * @return 结果
     */
    @Override
    public int updateCostBill(CostBill costBill)
    {
        return costBillMapper.updateCostBill(costBill);
    }

    /**
     * 批量删除患者费用账单
     * 
     * @param ids 需要删除的患者费用账单主键
     * @return 结果
     */
    @Override
    public int deleteCostBillByIds(String[] ids)
    {
        return costBillMapper.deleteCostBillByIds(ids);
    }

    /**
     * 删除患者费用账单信息
     * 
     * @param id 患者费用账单主键
     * @return 结果
     */
    @Override
    public int deleteCostBillById(String id)
    {
        return costBillMapper.deleteCostBillById(id);
    }
}
