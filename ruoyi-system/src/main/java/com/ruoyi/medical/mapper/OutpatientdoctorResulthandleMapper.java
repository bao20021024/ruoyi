package com.ruoyi.medical.mapper;

import java.util.List;

import com.ruoyi.medical.domain.OutpatientdoctorResulthandle;

/**
 * 医生看病治疗方案Mapper接口
 *
 * @author bao
 * @date 2021-09-23
 */
public interface OutpatientdoctorResulthandleMapper {
    /**
     * 查询医生看病治疗方案
     *
     * @param id 医生看病治疗方案主键
     * @return 医生看病治疗方案
     */
    public OutpatientdoctorResulthandle selectOutpatientdoctorResulthandleById(String id);

    /**
     * 查询医生看病治疗方案列表
     *
     * @param outpatientdoctorResulthandle 医生看病治疗方案
     * @return 医生看病治疗方案集合
     */
    public List<OutpatientdoctorResulthandle> selectOutpatientdoctorResulthandleList(OutpatientdoctorResulthandle outpatientdoctorResulthandle);

    /**
     * 新增医生看病治疗方案
     *
     * @param outpatientdoctorResulthandle 医生看病治疗方案
     * @return 结果
     */
    public int insertOutpatientdoctorResulthandle(OutpatientdoctorResulthandle outpatientdoctorResulthandle);

    /**
     * 修改医生看病治疗方案
     *
     * @param outpatientdoctorResulthandle 医生看病治疗方案
     * @return 结果
     */
    public int updateOutpatientdoctorResulthandle(OutpatientdoctorResulthandle outpatientdoctorResulthandle);

    /**
     * 删除医生看病治疗方案
     *
     * @param id 医生看病治疗方案主键
     * @return 结果
     */
    public int deleteOutpatientdoctorResulthandleById(String id);

    /**
     * 批量删除医生看病治疗方案
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteOutpatientdoctorResulthandleByIds(String[] ids);

    /**
     * 根据看病结果id查询医生看病治疗方案列表
     *
     * @param id 看病结果id
     * @return 医生看病治疗方案集合
     */
    public List<OutpatientdoctorResulthandle> selectByOpDoctorResultId(String id);

}
