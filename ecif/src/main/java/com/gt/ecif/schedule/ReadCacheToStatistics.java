package com.gt.ecif.schedule;

import com.gt.ecif.entity.Statistics;
import com.gt.ecif.service.StatisticsService;
import com.gt.ecif.utils.RedisUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.Date;

/**
 * @Description 每日将redis缓存信息持久化到数据库中
 * @Author guantong
 * @Date 2020/3/12 22:32
 * @Version 1.0
 */
@EnableScheduling
@Component
public class ReadCacheToStatistics {
    private static final Logger logger = LoggerFactory.getLogger(ReadCacheToStatistics.class);

    @Autowired
    private RedisUtils redisUtils;

    @Autowired
    private StatisticsService statisticsService;

    /**
     * 每日0时执行
     */
    @Scheduled(cron = "0 0 0 * * ?")
    public void recordStatisticsInfo(){
        int loginNum = (int)this.redisUtils.get("loginNum");
        Statistics statistics = new Statistics();
        statistics.setType(0);
        statistics.setName("loginNum");
        statistics.setNum(loginNum);
        statistics.setStatisticsDate(new Date());
        statistics.setStatisticsTime(new Date());
        this.statisticsService.insertStatistics(statistics);
    }

}
