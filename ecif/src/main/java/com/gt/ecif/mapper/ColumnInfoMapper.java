package com.gt.ecif.mapper;

import com.gt.ecif.entity.ColumnInfo;

public interface ColumnInfoMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(ColumnInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(ColumnInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    ColumnInfo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(ColumnInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(ColumnInfo record);
}