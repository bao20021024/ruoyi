package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CostOutpatientRechargeRecordMapper;
import com.ruoyi.medical.domain.CostOutpatientRechargeRecord;
import com.ruoyi.medical.service.ICostOutpatientRechargeRecordService;

/**
 * 门诊卡充值记录Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CostOutpatientRechargeRecordServiceImpl implements ICostOutpatientRechargeRecordService 
{
    @Autowired
    private CostOutpatientRechargeRecordMapper costOutpatientRechargeRecordMapper;

    /**
     * 查询门诊卡充值记录
     * 
     * @param id 门诊卡充值记录主键
     * @return 门诊卡充值记录
     */
    @Override
    public CostOutpatientRechargeRecord selectCostOutpatientRechargeRecordById(String id)
    {
        return costOutpatientRechargeRecordMapper.selectCostOutpatientRechargeRecordById(id);
    }

    /**
     * 查询门诊卡充值记录列表
     * 
     * @param costOutpatientRechargeRecord 门诊卡充值记录
     * @return 门诊卡充值记录
     */
    @Override
    public List<CostOutpatientRechargeRecord> selectCostOutpatientRechargeRecordList(CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        return costOutpatientRechargeRecordMapper.selectCostOutpatientRechargeRecordList(costOutpatientRechargeRecord);
    }

    /**
     * 新增门诊卡充值记录
     * 
     * @param costOutpatientRechargeRecord 门诊卡充值记录
     * @return 结果
     */
    @Override
    public int insertCostOutpatientRechargeRecord(CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        costOutpatientRechargeRecord.setCreateTime(DateUtils.getNowDate());
        return costOutpatientRechargeRecordMapper.insertCostOutpatientRechargeRecord(costOutpatientRechargeRecord);
    }

    /**
     * 修改门诊卡充值记录
     * 
     * @param costOutpatientRechargeRecord 门诊卡充值记录
     * @return 结果
     */
    @Override
    public int updateCostOutpatientRechargeRecord(CostOutpatientRechargeRecord costOutpatientRechargeRecord)
    {
        return costOutpatientRechargeRecordMapper.updateCostOutpatientRechargeRecord(costOutpatientRechargeRecord);
    }

    /**
     * 批量删除门诊卡充值记录
     * 
     * @param ids 需要删除的门诊卡充值记录主键
     * @return 结果
     */
    @Override
    public int deleteCostOutpatientRechargeRecordByIds(String[] ids)
    {
        return costOutpatientRechargeRecordMapper.deleteCostOutpatientRechargeRecordByIds(ids);
    }

    /**
     * 删除门诊卡充值记录信息
     * 
     * @param id 门诊卡充值记录主键
     * @return 结果
     */
    @Override
    public int deleteCostOutpatientRechargeRecordById(String id)
    {
        return costOutpatientRechargeRecordMapper.deleteCostOutpatientRechargeRecordById(id);
    }
}
