package com.gt.ecif.mapper;

import com.gt.ecif.entity.SqlInfo;

public interface SqlInfoMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(SqlInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(SqlInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    SqlInfo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(SqlInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeyWithBLOBs(SqlInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(SqlInfo record);
}