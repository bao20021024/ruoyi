package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.CostOutpatientRechargeRecord;

/**
 * 门诊卡充值记录Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface CostOutpatientRechargeRecordMapper 
{
    /**
     * 查询门诊卡充值记录
     * 
     * @param id 门诊卡充值记录主键
     * @return 门诊卡充值记录
     */
    public CostOutpatientRechargeRecord selectCostOutpatientRechargeRecordById(String id);

    /**
     * 查询门诊卡充值记录列表
     * 
     * @param costOutpatientRechargeRecord 门诊卡充值记录
     * @return 门诊卡充值记录集合
     */
    public List<CostOutpatientRechargeRecord> selectCostOutpatientRechargeRecordList(CostOutpatientRechargeRecord costOutpatientRechargeRecord);

    /**
     * 新增门诊卡充值记录
     * 
     * @param costOutpatientRechargeRecord 门诊卡充值记录
     * @return 结果
     */
    public int insertCostOutpatientRechargeRecord(CostOutpatientRechargeRecord costOutpatientRechargeRecord);

    /**
     * 修改门诊卡充值记录
     * 
     * @param costOutpatientRechargeRecord 门诊卡充值记录
     * @return 结果
     */
    public int updateCostOutpatientRechargeRecord(CostOutpatientRechargeRecord costOutpatientRechargeRecord);

    /**
     * 删除门诊卡充值记录
     * 
     * @param id 门诊卡充值记录主键
     * @return 结果
     */
    public int deleteCostOutpatientRechargeRecordById(String id);

    /**
     * 批量删除门诊卡充值记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCostOutpatientRechargeRecordByIds(String[] ids);

    /**
     * 根据门诊卡信息id查询对应充值取现记录
     * @param outpatientId 门诊卡信息id
     * @return 门诊卡充值取现记录集合
     */
    public List<CostOutpatientRechargeRecord> selectByInfo(String outpatientId);

}
