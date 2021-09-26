package com.ruoyi.medical.service;

import java.util.List;
import com.ruoyi.medical.domain.CpoeSickroomDuty;

/**
 * 病房值班记录Service接口
 * 
 * @author bao
 * @date 2021-09-23
 */
public interface ICpoeSickroomDutyService 
{
    /**
     * 查询病房值班记录
     * 
     * @param id 病房值班记录主键
     * @return 病房值班记录
     */
    public CpoeSickroomDuty selectCpoeSickroomDutyById(String id);

    /**
     * 查询病房值班记录列表
     * 
     * @param cpoeSickroomDuty 病房值班记录
     * @return 病房值班记录集合
     */
    public List<CpoeSickroomDuty> selectCpoeSickroomDutyList(CpoeSickroomDuty cpoeSickroomDuty);

    /**
     * 新增病房值班记录
     * 
     * @param cpoeSickroomDuty 病房值班记录
     * @return 结果
     */
    public int insertCpoeSickroomDuty(CpoeSickroomDuty cpoeSickroomDuty);

    /**
     * 修改病房值班记录
     * 
     * @param cpoeSickroomDuty 病房值班记录
     * @return 结果
     */
    public int updateCpoeSickroomDuty(CpoeSickroomDuty cpoeSickroomDuty);

    /**
     * 批量删除病房值班记录
     * 
     * @param ids 需要删除的病房值班记录主键集合
     * @return 结果
     */
    public int deleteCpoeSickroomDutyByIds(String[] ids);

    /**
     * 删除病房值班记录信息
     * 
     * @param id 病房值班记录主键
     * @return 结果
     */
    public int deleteCpoeSickroomDutyById(String id);
}
