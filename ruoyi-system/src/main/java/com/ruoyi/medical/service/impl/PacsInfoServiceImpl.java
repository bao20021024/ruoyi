package com.ruoyi.medical.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.medical.modle.LisAndPacs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.medical.mapper.PacsInfoMapper;
import com.ruoyi.medical.domain.PacsInfo;
import com.ruoyi.medical.service.IPacsInfoService;

/**
 * PACS影像信息Service业务层处理
 * 
 * @author bao
 * @date 2021-09-23
 */
@Service
public class PacsInfoServiceImpl implements IPacsInfoService 
{
    @Autowired
    private PacsInfoMapper pacsInfoMapper;

    /**
     * 查询PACS影像信息
     * 
     * @param id PACS影像信息主键
     * @return PACS影像信息
     */
    @Override
    public PacsInfo selectPacsInfoById(String id)
    {
        return pacsInfoMapper.selectPacsInfoById(id);
    }

    /**
     * 查询PACS影像信息列表
     * 
     * @param pacsInfo PACS影像信息
     * @return PACS影像信息
     */
    @Override
    public List<PacsInfo> selectPacsInfoList(PacsInfo pacsInfo)
    {
        return pacsInfoMapper.selectPacsInfoList(pacsInfo);
    }

    /**
     * 新增PACS影像信息
     * 
     * @param pacsInfo PACS影像信息
     * @return 结果
     */
    @Override
    public int insertPacsInfo(PacsInfo pacsInfo)
    {
        pacsInfo.setCreateTime(DateUtils.getNowDate());
        return pacsInfoMapper.insertPacsInfo(pacsInfo);
    }

    /**
     * 修改PACS影像信息
     * 
     * @param pacsInfo PACS影像信息
     * @return 结果
     */
    @Override
    public int updatePacsInfo(PacsInfo pacsInfo)
    {
        return pacsInfoMapper.updatePacsInfo(pacsInfo);
    }

    /**
     * 批量删除PACS影像信息
     * 
     * @param ids 需要删除的PACS影像信息主键
     * @return 结果
     */
    @Override
    public int deletePacsInfoByIds(String[] ids)
    {
        return pacsInfoMapper.deletePacsInfoByIds(ids);
    }

    /**
     * 删除PACS影像信息信息
     * 
     * @param id PACS影像信息主键
     * @return 结果
     */
    @Override
    public int deletePacsInfoById(String id)
    {
        return pacsInfoMapper.deletePacsInfoById(id);
    }

    @Override
    public List<LisAndPacs> selByReceiveRecordId(String id) {
        return pacsInfoMapper.selByReceiveRecordId(id);
    }
}
