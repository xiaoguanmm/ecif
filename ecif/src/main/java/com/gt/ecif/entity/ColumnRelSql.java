package com.gt.ecif.entity;

import java.io.Serializable;
import java.util.Date;

public class ColumnRelSql implements Serializable {
    /**
     * 业务ID
     */
    private Integer collectionId;

    /**
     * 字段ID
     */
    private Integer columnId;

    /**
     * SQL_ID
     */
    private Integer sqlId;

    /**
     * 创建人
     */
    private Integer createdBy;

    /**
     * 创建时间
     */
    private Date createdTime;

    /**
     * 更新人
     */
    private Integer updatedBy;

    /**
     * 更新时间
     */
    private Date updatedTime;

    /**
     * column_rel_sql
     */
    private static final long serialVersionUID = 1L;

    /**
     * 业务ID
     * @return COLLECTION_ID 业务ID
     */
    public Integer getCollectionId() {
        return collectionId;
    }

    /**
     * 业务ID
     * @param collectionId 业务ID
     */
    public void setCollectionId(Integer collectionId) {
        this.collectionId = collectionId;
    }

    /**
     * 字段ID
     * @return COLUMN_ID 字段ID
     */
    public Integer getColumnId() {
        return columnId;
    }

    /**
     * 字段ID
     * @param columnId 字段ID
     */
    public void setColumnId(Integer columnId) {
        this.columnId = columnId;
    }

    /**
     * SQL_ID
     * @return SQL_ID SQL_ID
     */
    public Integer getSqlId() {
        return sqlId;
    }

    /**
     * SQL_ID
     * @param sqlId SQL_ID
     */
    public void setSqlId(Integer sqlId) {
        this.sqlId = sqlId;
    }

    /**
     * 创建人
     * @return CREATED_BY 创建人
     */
    public Integer getCreatedBy() {
        return createdBy;
    }

    /**
     * 创建人
     * @param createdBy 创建人
     */
    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    /**
     * 创建时间
     * @return CREATED_TIME 创建时间
     */
    public Date getCreatedTime() {
        return createdTime;
    }

    /**
     * 创建时间
     * @param createdTime 创建时间
     */
    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    /**
     * 更新人
     * @return UPDATED_BY 更新人
     */
    public Integer getUpdatedBy() {
        return updatedBy;
    }

    /**
     * 更新人
     * @param updatedBy 更新人
     */
    public void setUpdatedBy(Integer updatedBy) {
        this.updatedBy = updatedBy;
    }

    /**
     * 更新时间
     * @return UPDATED_TIME 更新时间
     */
    public Date getUpdatedTime() {
        return updatedTime;
    }

    /**
     * 更新时间
     * @param updatedTime 更新时间
     */
    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }
}