package com.gt.ecif.mapper;

import com.gt.ecif.entity.EcifTableCollection;

public interface EcifTableCollectionMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(EcifTableCollection record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(EcifTableCollection record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    EcifTableCollection selectByPrimaryKey(Integer id);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(EcifTableCollection record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(EcifTableCollection record);
}