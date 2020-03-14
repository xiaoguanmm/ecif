package com.gt.ecif.mapper;

import com.gt.ecif.entity.Statistics;

public interface StatisticsMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(Statistics record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(Statistics record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    Statistics selectByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(Statistics record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(Statistics record);
}