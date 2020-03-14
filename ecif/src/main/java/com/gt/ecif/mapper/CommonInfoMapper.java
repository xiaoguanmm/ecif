package com.gt.ecif.mapper;

import com.gt.ecif.entity.CommonInfo;

public interface CommonInfoMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(CommonInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(CommonInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    CommonInfo selectByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(CommonInfo record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(CommonInfo record);
}