package com.ruoyi.medical.mapper;

import java.util.List;
import com.ruoyi.medical.domain.CostOutpatientInfo;

/**
 * 门诊卡信息Mapper接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface CostOutpatientInfoMapper 
{
    /**
     * 查询门诊卡信息
     * 
     * @param id 门诊卡信息主键
     * @return 门诊卡信息
     */
    public CostOutpatientInfo selectCostOutpatientInfoById(Long id);

    /**
     * 查询门诊卡信息列表
     * 
     * @param costOutpatientInfo 门诊卡信息
     * @return 门诊卡信息集合
     */
    public List<CostOutpatientInfo> selectCostOutpatientInfoList(CostOutpatientInfo costOutpatientInfo);

    /**
     * 新增门诊卡信息
     * 
     * @param costOutpatientInfo 门诊卡信息
     * @return 结果
     */
    public int insertCostOutpatientInfo(CostOutpatientInfo costOutpatientInfo);

    /**
     * 修改门诊卡信息
     * 
     * @param costOutpatientInfo 门诊卡信息
     * @return 结果
     */
    public int updateCostOutpatientInfo(CostOutpatientInfo costOutpatientInfo);

    /**
     * 删除门诊卡信息
     * 
     * @param id 门诊卡信息主键
     * @return 结果
     */
    public int deleteCostOutpatientInfoById(Long id);

    /**
     * 批量删除门诊卡信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCostOutpatientInfoByIds(Long[] ids);

    /**
     *  根据个人档案id查询出已启用的门诊卡
     * @param personid 个人档案id
     * @return 已启用的门诊卡
     */
    public CostOutpatientInfo selectByPersonid(String personid);
}
