package com.ruoyi.medical.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.CostOutpatientInfoMapper;
import com.ruoyi.medical.domain.CostOutpatientInfo;
import com.ruoyi.medical.service.ICostOutpatientInfoService;

/**
 * 门诊卡信息Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class CostOutpatientInfoServiceImpl implements ICostOutpatientInfoService 
{
    @Autowired
    private CostOutpatientInfoMapper costOutpatientInfoMapper;

    /**
     * 查询门诊卡信息
     * 
     * @param id 门诊卡信息主键
     * @return 门诊卡信息
     */
    @Override
    public CostOutpatientInfo selectCostOutpatientInfoById(Long id)
    {
        return costOutpatientInfoMapper.selectCostOutpatientInfoById(id);
    }

    /**
     * 查询门诊卡信息列表
     * 
     * @param costOutpatientInfo 门诊卡信息
     * @return 门诊卡信息
     */
    @Override
    public List<CostOutpatientInfo> selectCostOutpatientInfoList(CostOutpatientInfo costOutpatientInfo)
    {
        return costOutpatientInfoMapper.selectCostOutpatientInfoList(costOutpatientInfo);
    }

    /**
     * 新增门诊卡信息
     * 
     * @param costOutpatientInfo 门诊卡信息
     * @return 结果
     */
    @Override
    public int insertCostOutpatientInfo(CostOutpatientInfo costOutpatientInfo)
    {
        return costOutpatientInfoMapper.insertCostOutpatientInfo(costOutpatientInfo);
    }

    /**
     * 修改门诊卡信息
     * 
     * @param costOutpatientInfo 门诊卡信息
     * @return 结果
     */
    @Override
    public int updateCostOutpatientInfo(CostOutpatientInfo costOutpatientInfo)
    {
        return costOutpatientInfoMapper.updateCostOutpatientInfo(costOutpatientInfo);
    }

    /**
     * 批量删除门诊卡信息
     * 
     * @param ids 需要删除的门诊卡信息主键
     * @return 结果
     */
    @Override
    public int deleteCostOutpatientInfoByIds(Long[] ids)
    {
        return costOutpatientInfoMapper.deleteCostOutpatientInfoByIds(ids);
    }

    /**
     * 删除门诊卡信息信息
     * 
     * @param id 门诊卡信息主键
     * @return 结果
     */
    @Override
    public int deleteCostOutpatientInfoById(Long id)
    {
        return costOutpatientInfoMapper.deleteCostOutpatientInfoById(id);
    }

    @Override
    public CostOutpatientInfo selectByPersonid(String personid) {
        return costOutpatientInfoMapper.selectByPersonid(personid);
    }
}
