package com.gt.ecif.mapper;

import com.gt.ecif.entity.RoleResourceOperator;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleResourceOperatorMapper {
    int deleteByPrimaryKey(String pid);

    int insert(RoleResourceOperator record);

    int insertSelective(RoleResourceOperator record);

    RoleResourceOperator selectByPrimaryKey(String pid);

    int updateByPrimaryKeySelective(RoleResourceOperator record);

    int updateByPrimaryKey(RoleResourceOperator record);

    /**
     * 根据角色ID删除角色权限
     * @param roleId
     * @return
     */
	int deleteByRoleId(@Param("roleId") String roleId);

	/**
	 * 批量插入权限信息
	 * @param roleId
	 * @param authorities
	 * @return
	 */
	int batchInsertAuthorities(@Param("roleId") String roleId, @Param("authorities") String[] authorities);

	/**
	 * 获取当前角色所拥有的权限信息
	 * @param pid
	 * @return
	 */
	List<String> getAuthoritiesByRoleId(@Param("roleId") String roleId);
}