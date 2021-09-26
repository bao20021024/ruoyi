package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CostDeadBillMapper;
import com.ruoyi.medical.domain.CostDeadBill;
import com.ruoyi.medical.service.ICostDeadBillService;

/**
 * 医院烂账记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CostDeadBillServiceImpl implements ICostDeadBillService 
{
    @Autowired
    private CostDeadBillMapper costDeadBillMapper;

    /**
     * 查询医院烂账记录
     * 
     * @param id 医院烂账记录主键
     * @return 医院烂账记录
     */
    @Override
    public CostDeadBill selectCostDeadBillById(String id)
    {
        return costDeadBillMapper.selectCostDeadBillById(id);
    }

    /**
     * 查询医院烂账记录列表
     * 
     * @param costDeadBill 医院烂账记录
     * @return 医院烂账记录
     */
    @Override
    public List<CostDeadBill> selectCostDeadBillList(CostDeadBill costDeadBill)
    {
        return costDeadBillMapper.selectCostDeadBillList(costDeadBill);
    }

    /**
     * 新增医院烂账记录
     * 
     * @param costDeadBill 医院烂账记录
     * @return 结果
     */
    @Override
    public int insertCostDeadBill(CostDeadBill costDeadBill)
    {
        costDeadBill.setCreateTime(DateUtils.getNowDate());
        return costDeadBillMapper.insertCostDeadBill(costDeadBill);
    }

    /**
     * 修改医院烂账记录
     * 
     * @param costDeadBill 医院烂账记录
     * @return 结果
     */
    @Override
    public int updateCostDeadBill(CostDeadBill costDeadBill)
    {
        return costDeadBillMapper.updateCostDeadBill(costDeadBill);
    }

    /**
     * 批量删除医院烂账记录
     * 
     * @param ids 需要删除的医院烂账记录主键
     * @return 结果
     */
    @Override
    public int deleteCostDeadBillByIds(String[] ids)
    {
        return costDeadBillMapper.deleteCostDeadBillByIds(ids);
    }

    /**
     * 删除医院烂账记录信息
     * 
     * @param id 医院烂账记录主键
     * @return 结果
     */
    @Override
    public int deleteCostDeadBillById(String id)
    {
        return costDeadBillMapper.deleteCostDeadBillById(id);
    }
}
