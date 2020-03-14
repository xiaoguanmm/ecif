package com.gt.ecif.entity;

import java.io.Serializable;
import java.util.Date;

public class EcifTableCollection implements Serializable {
    /**
     * 主键id
     */
    private Integer id;

    /**
     * SOA联机交易英文名称
     */
    private String soaEnName;

    /**
     * SOA联机交易中文名称
     */
    private String soaCnNam;

    /**
     * 联机交易业务功能
     */
    private String bussinessDes;

    /**
     * 涉及库表及字段关联column_info表
     */
    private String relColumn;

    /**
     * SQL_ID信息关联sql_info表
     */
    private String relSql;

    /**
     * 公共类及方法名称关联common_info表
     */
    private String relCommon;

    /**
     * 负责人
     */
    private String principal;

    /**
     * 完成时间
     */
    private Date completeTime;

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
     * ecif_table_collection
     */
    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     * @return ID 主键id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 主键id
     * @param id 主键id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * SOA联机交易英文名称
     * @return SOA_EN_NAME SOA联机交易英文名称
     */
    public String getSoaEnName() {
        return soaEnName;
    }

    /**
     * SOA联机交易英文名称
     * @param soaEnName SOA联机交易英文名称
     */
    public void setSoaEnName(String soaEnName) {
        this.soaEnName = soaEnName == null ? null : soaEnName.trim();
    }

    /**
     * SOA联机交易中文名称
     * @return SOA_CN_NAM SOA联机交易中文名称
     */
    public String getSoaCnNam() {
        return soaCnNam;
    }

    /**
     * SOA联机交易中文名称
     * @param soaCnNam SOA联机交易中文名称
     */
    public void setSoaCnNam(String soaCnNam) {
        this.soaCnNam = soaCnNam == null ? null : soaCnNam.trim();
    }

    /**
     * 联机交易业务功能
     * @return BUSSINESS_DES 联机交易业务功能
     */
    public String getBussinessDes() {
        return bussinessDes;
    }

    /**
     * 联机交易业务功能
     * @param bussinessDes 联机交易业务功能
     */
    public void setBussinessDes(String bussinessDes) {
        this.bussinessDes = bussinessDes == null ? null : bussinessDes.trim();
    }

    /**
     * 涉及库表及字段关联column_info表
     * @return REL_COLUMN 涉及库表及字段关联column_info表
     */
    public String getRelColumn() {
        return relColumn;
    }

    /**
     * 涉及库表及字段关联column_info表
     * @param relColumn 涉及库表及字段关联column_info表
     */
    public void setRelColumn(String relColumn) {
        this.relColumn = relColumn == null ? null : relColumn.trim();
    }

    /**
     * SQL_ID信息关联sql_info表
     * @return REL_SQL SQL_ID信息关联sql_info表
     */
    public String getRelSql() {
        return relSql;
    }

    /**
     * SQL_ID信息关联sql_info表
     * @param relSql SQL_ID信息关联sql_info表
     */
    public void setRelSql(String relSql) {
        this.relSql = relSql == null ? null : relSql.trim();
    }

    /**
     * 公共类及方法名称关联common_info表
     * @return REL_COMMON 公共类及方法名称关联common_info表
     */
    public String getRelCommon() {
        return relCommon;
    }

    /**
     * 公共类及方法名称关联common_info表
     * @param relCommon 公共类及方法名称关联common_info表
     */
    public void setRelCommon(String relCommon) {
        this.relCommon = relCommon == null ? null : relCommon.trim();
    }

    /**
     * 负责人
     * @return PRINCIPAL 负责人
     */
    public String getPrincipal() {
        return principal;
    }

    /**
     * 负责人
     * @param principal 负责人
     */
    public void setPrincipal(String principal) {
        this.principal = principal == null ? null : principal.trim();
    }

    /**
     * 完成时间
     * @return COMPLETE_TIME 完成时间
     */
    public Date getCompleteTime() {
        return completeTime;
    }

    /**
     * 完成时间
     * @param completeTime 完成时间
     */
    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
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