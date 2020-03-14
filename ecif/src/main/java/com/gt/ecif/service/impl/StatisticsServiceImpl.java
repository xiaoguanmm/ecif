package com.gt.ecif.service.impl;

import com.gt.ecif.entity.Statistics;
import com.gt.ecif.mapper.StatisticsMapper;
import com.gt.ecif.service.StatisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description TODO
 * @Author guantong
 * @Date 2020/3/13 0:02
 * @Version 1.0
 */
@Service("statisticsService")
public class StatisticsServiceImpl implements StatisticsService {

    @Autowired
    private StatisticsMapper statisticsMapper;

    @Transactional
    @Override
    public int insertStatistics(Statistics statistics) {
        return this.statisticsMapper.insertSelective(statistics);
    }
}
