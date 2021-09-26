package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CpoeDoctorsorderhandle;

/**
 * 医嘱执行记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICpoeDoctorsorderhandleService 
{
    /**
     * 查询医嘱执行记录
     * 
     * @param id 医嘱执行记录主键
     * @return 医嘱执行记录
     */
    public CpoeDoctorsorderhandle selectCpoeDoctorsorderhandleById(String id);

    /**
     * 查询医嘱执行记录列表
     * 
     * @param cpoeDoctorsorderhandle 医嘱执行记录
     * @return 医嘱执行记录集合
     */
    public List<CpoeDoctorsorderhandle> selectCpoeDoctorsorderhandleList(CpoeDoctorsorderhandle cpoeDoctorsorderhandle);

    /**
     * 新增医嘱执行记录
     * 
     * @param cpoeDoctorsorderhandle 医嘱执行记录
     * @return 结果
     */
    public int insertCpoeDoctorsorderhandle(CpoeDoctorsorderhandle cpoeDoctorsorderhandle);

    /**
     * 修改医嘱执行记录
     * 
     * @param cpoeDoctorsorderhandle 医嘱执行记录
     * @return 结果
     */
    public int updateCpoeDoctorsorderhandle(CpoeDoctorsorderhandle cpoeDoctorsorderhandle);

    /**
     * 批量删除医嘱执行记录
     * 
     * @param ids 需要删除的医嘱执行记录主键集合
     * @return 结果
     */
    public int deleteCpoeDoctorsorderhandleByIds(String[] ids);

    /**
     * 删除医嘱执行记录信息
     * 
     * @param id 医嘱执行记录主键
     * @return 结果
     */
    public int deleteCpoeDoctorsorderhandleById(String id);
}
