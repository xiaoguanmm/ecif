package com.gt.ecif.mapper;

import com.gt.ecif.entity.LogInfo;

import java.util.List;
import java.util.Map;

public interface LogInfoMapper {

    public List<LogInfo> getLogInfoList(Map<String, String> paramsMap);
    
    public int getLogInfoListCount(Map<String, String> paramsMap);
    
    public LogInfo getLogInfo(String logInfoId);
    
    public int addLogInfo(LogInfo logInfo);
}