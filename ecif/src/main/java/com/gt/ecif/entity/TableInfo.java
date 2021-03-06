package com.gt.ecif.entity;

import java.io.Serializable;
import java.util.Date;

public class TableInfo implements Serializable {
    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 表名称
     */
    private String tableName;

    /**
     * 表备注信息
     */
    private String tableComment;

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
     * table_info
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
     * 表名称
     * @return TABLE_NAME 表名称
     */
    public String getTableName() {
        return tableName;
    }

    /**
     * 表名称
     * @param tableName 表名称
     */
    public void setTableName(String tableName) {
        this.tableName = tableName == null ? null : tableName.trim();
    }

    /**
     * 表备注信息
     * @return TABLE_COMMENT 表备注信息
     */
    public String getTableComment() {
        return tableComment;
    }

    /**
     * 表备注信息
     * @param tableComment 表备注信息
     */
    public void setTableComment(String tableComment) {
        this.tableComment = tableComment == null ? null : tableComment.trim();
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