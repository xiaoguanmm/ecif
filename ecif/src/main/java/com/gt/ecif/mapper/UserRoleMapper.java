package com.gt.ecif.mapper;

import com.gt.ecif.entity.UserRole;
import org.apache.ibatis.annotations.Param;

public interface UserRoleMapper {
    int deleteByPrimaryKey(String pid);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(String pid);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);

    /**
     * 根据 user_id 及 role_id 批量删除
     * @param roleIds
     * @param userId
     * @return
     */
	int batchDelUserRole(@Param("roleIds") String[] roleIds, @Param("userId") String userId);

	/**
	 * 根据UserId删除
	 * @param userId
	 * @return
	 */
	int deleteUserRoleByUserId(@Param("userId") String userId);
}