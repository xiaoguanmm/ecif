package com.gt.ecif.mapper;

import com.gt.ecif.entity.TableInfo;

public interface TableInfoMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(TableInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(TableInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    TableInfo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(TableInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(TableInfo record);
}