package com.gt.ecif.mapper;

import com.gt.ecif.entity.ColumnRelSql;
import org.apache.ibatis.annotations.Param;

public interface ColumnRelSqlMapper {
    /**
     *
     * @mbg.generated 2020-03-12
     */
    int deleteByPrimaryKey(@Param("collectionId") Integer collectionId, @Param("columnId") Integer columnId, @Param("sqlId") Integer sqlId);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insert(ColumnRelSql record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int insertSelective(ColumnRelSql record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    ColumnRelSql selectByPrimaryKey(@Param("collectionId") Integer collectionId, @Param("columnId") Integer columnId, @Param("sqlId") Integer sqlId);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKeySelective(ColumnRelSql record);

    /**
     *
     * @mbg.generated 2020-03-12
     */
    int updateByPrimaryKey(ColumnRelSql record);
}