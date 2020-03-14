package com.gt.ecif.entity;

import java.io.Serializable;
import java.util.Date;

public class SqlInfo implements Serializable {
    /**
     * 主键ID
     */
    private Integer id;

    /**
     * SQL_ID
     */
    private String sqlId;

    /**
     * SQL说明
     */
    private String des;

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
     * SQL语句
     */
    private String sqlContent;

    /**
     * sql_info
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
     * SQL_ID
     * @return SQL_ID SQL_ID
     */
    public String getSqlId() {
        return sqlId;
    }

    /**
     * SQL_ID
     * @param sqlId SQL_ID
     */
    public void setSqlId(String sqlId) {
        this.sqlId = sqlId == null ? null : sqlId.trim();
    }

    /**
     * SQL说明
     * @return DES SQL说明
     */
    public String getDes() {
        return des;
    }

    /**
     * SQL说明
     * @param des SQL说明
     */
    public void setDes(String des) {
        this.des = des == null ? null : des.trim();
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

    /**
     * SQL语句
     * @return SQL_CONTENT SQL语句
     */
    public String getSqlContent() {
        return sqlContent;
    }

    /**
     * SQL语句
     * @param sqlContent SQL语句
     */
    public void setSqlContent(String sqlContent) {
        this.sqlContent = sqlContent == null ? null : sqlContent.trim();
    }
}