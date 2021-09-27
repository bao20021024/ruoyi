package com.ruoyi.medical.mapper;

import java.util.List;

import com.ruoyi.medical.domain.PacsInfo;
import com.ruoyi.medical.modle.LisAndPacs;

/**
 * PACS影像信息Mapper接口
 *
 * @author bao
 * @date 2021-09-23
 */
public interface PacsInfoMapper {
    /**
     * 查询PACS影像信息
     *
     * @param id PACS影像信息主键
     * @return PACS影像信息
     */
    public PacsInfo selectPacsInfoById(String id);

    /**
     * 查询PACS影像信息列表
     *
     * @param pacsInfo PACS影像信息
     * @return PACS影像信息集合
     */
    public List<PacsInfo> selectPacsInfoList(PacsInfo pacsInfo);

    /**
     * 新增PACS影像信息
     *
     * @param pacsInfo PACS影像信息
     * @return 结果
     */
    public int insertPacsInfo(PacsInfo pacsInfo);

    /**
     * 修改PACS影像信息
     *
     * @param pacsInfo PACS影像信息
     * @return 结果
     */
    public int updatePacsInfo(PacsInfo pacsInfo);

    /**
     * 删除PACS影像信息
     *
     * @param id PACS影像信息主键
     * @return 结果
     */
    public int deletePacsInfoById(String id);

    /**
     * 批量删除PACS影像信息
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePacsInfoByIds(String[] ids);

    /**
     * 根据接诊记录id查询所有pacs影像
     *
     * @param id 接诊记录id
     * @return pacs影像集合
     */
    public List<LisAndPacs> selByReceiveRecordId(String id);
}
