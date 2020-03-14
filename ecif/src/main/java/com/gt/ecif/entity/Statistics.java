package com.gt.ecif.entity;

import java.io.Serializable;
import java.util.Date;

public class Statistics implements Serializable {
    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 统计类型
     */
    private Integer type;

    /**
     * 统计项名称
     */
    private String name;

    /**
     * 统计项数量
     */
    private Integer num;

    /**
     * 统计日期
     */
    private Date statisticsDate;

    /**
     * 统计时间
     */
    private Date statisticsTime;

    /**
     * statistics
     */
    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     * @return ID 主键ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 主键ID
     * @param id 主键ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 统计类型
     * @return TYPE 统计类型
     */
    public Integer getType() {
        return type;
    }

    /**
     * 统计类型
     * @param type 统计类型
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 统计项名称
     * @return NAME 统计项名称
     */
    public String getName() {
        return name;
    }

    /**
     * 统计项名称
     * @param name 统计项名称
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * 统计项数量
     * @return NUM 统计项数量
     */
    public Integer getNum() {
        return num;
    }

    /**
     * 统计项数量
     * @param num 统计项数量
     */
    public void setNum(Integer num) {
        this.num = num;
    }

    /**
     * 统计日期
     * @return STATISTICS_DATE 统计日期
     */
    public Date getStatisticsDate() {
        return statisticsDate;
    }

    /**
     * 统计日期
     * @param statisticsDate 统计日期
     */
    public void setStatisticsDate(Date statisticsDate) {
        this.statisticsDate = statisticsDate;
    }

    /**
     * 统计时间
     * @return STATISTICS_TIME 统计时间
     */
    public Date getStatisticsTime() {
        return statisticsTime;
    }

    /**
     * 统计时间
     * @param statisticsTime 统计时间
     */
    public void setStatisticsTime(Date statisticsTime) {
        this.statisticsTime = statisticsTime;
    }
}