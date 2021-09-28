package com.ruoyi.medical.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CostBillDetailMapper;
import com.ruoyi.medical.domain.CostBillDetail;
import com.ruoyi.medical.service.ICostBillDetailService;

/**
 * 患者费用明细Service业务层处理
 *
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CostBillDetailServiceImpl implements ICostBillDetailService {
    @Autowired
    private CostBillDetailMapper costBillDetailMapper;

    /**
     * 查询患者费用明细
     *
     * @param id 患者费用明细主键
     * @return 患者费用明细
     */
    @Override
    public CostBillDetail selectCostBillDetailById(String id) {
        return costBillDetailMapper.selectCostBillDetailById(id);
    }

    /**
     * 查询患者费用明细列表
     *
     * @param costBillDetail 患者费用明细
     * @return 患者费用明细
     */
    @Override
    public List<CostBillDetail> selectCostBillDetailList(CostBillDetail costBillDetail) {
        return costBillDetailMapper.selectCostBillDetailList(costBillDetail);
    }

    /**
     * 新增患者费用明细
     *
     * @param costBillDetail 患者费用明细
     * @return 结果
     */
    @Override
    public int insertCostBillDetail(CostBillDetail costBillDetail) {
        return costBillDetailMapper.insertCostBillDetail(costBillDetail);
    }

    /**
     * 修改患者费用明细
     *
     * @param costBillDetail 患者费用明细
     * @return 结果
     */
    @Override
    public int updateCostBillDetail(CostBillDetail costBillDetail) {
        return costBillDetailMapper.updateCostBillDetail(costBillDetail);
    }

    /**
     * 批量删除患者费用明细
     *
     * @param ids 需要删除的患者费用明细主键
     * @return 结果
     */
    @Override
    public int deleteCostBillDetailByIds(String[] ids) {
        return costBillDetailMapper.deleteCostBillDetailByIds(ids);
    }

    /**
     * 删除患者费用明细信息
     *
     * @param id 患者费用明细主键
     * @return 结果
     */
    @Override
    public int deleteCostBillDetailById(String id) {
        return costBillDetailMapper.deleteCostBillDetailById(id);
    }

    @Override
    public List<CostBillDetail> selectByBillid(String id) {
        return costBillDetailMapper.selectByBillid(id);
    }
}
