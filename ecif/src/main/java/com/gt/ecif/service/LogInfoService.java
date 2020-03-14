package com.gt.ecif.service;

import com.gt.ecif.entity.LogInfo;

import java.util.Map;

/**
 * 系统日志服务
 * 
 * @author wufujing
 * 
 */
public interface LogInfoService {

    /**
     * 系统日志
     * 
     * @param paramsMap
     * @return
     */
    public Map<String, Object> getLogInfoListPage(Map<String, String> paramsMap);
    
    /**
     * 系统日志详情
     * 
     * @param logInfoId
     * @return
     */
    public LogInfo getLogInfo(String logInfoId);

    /**
     * 新增日志
     * 
     * @param logInfo
     */
    public int addLogInfo(LogInfo logInfo);
}
