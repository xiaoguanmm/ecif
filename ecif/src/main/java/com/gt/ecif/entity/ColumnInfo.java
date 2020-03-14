package com.gt.ecif.entity;

import java.io.Serializable;
import java.util.Date;

public class ColumnInfo implements Serializable {
    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 表ID
     */
    private Integer tableId;

    /**
     * 字段名称
     */
    private String columnName;

    /**
     * 字段注释
     */
    private String columnComment;

    /**
     * 关联码表(也即表ID)
     */
    private Integer codetableId;

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
     * column_info
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
     * 表ID
     * @return TABLE_ID 表ID
     */
    public Integer getTableId() {
        return tableId;
    }

    /**
     * 表ID
     * @param tableId 表ID
     */
    public void setTableId(Integer tableId) {
        this.tableId = tableId;
    }

    /**
     * 字段名称
     * @return COLUMN_NAME 字段名称
     */
    public String getColumnName() {
        return columnName;
    }

    /**
     * 字段名称
     * @param columnName 字段名称
     */
    public void setColumnName(String columnName) {
        this.columnName = columnName == null ? null : columnName.trim();
    }

    /**
     * 字段注释
     * @return COLUMN_COMMENT 字段注释
     */
    public String getColumnComment() {
        return columnComment;
    }

    /**
     * 字段注释
     * @param columnComment 字段注释
     */
    public void setColumnComment(String columnComment) {
        this.columnComment = columnComment == null ? null : columnComment.trim();
    }

    /**
     * 关联码表(也即表ID)
     * @return CODETABLE_ID 关联码表(也即表ID)
     */
    public Integer getCodetableId() {
        return codetableId;
    }

    /**
     * 关联码表(也即表ID)
     * @param codetableId 关联码表(也即表ID)
     */
    public void setCodetableId(Integer codetableId) {
        this.codetableId = codetableId;
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