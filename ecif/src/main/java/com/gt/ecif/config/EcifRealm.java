package com.gt.ecif.config;

import com.gt.ecif.entity.UserInfo;
import com.gt.ecif.service.AuthorityService;
import com.gt.ecif.service.UserInfoService;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Map;

public class EcifRealm extends AuthorizingRealm {

    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private AuthorityService authorityService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        UserInfo userInfo = (UserInfo) principalCollection.getPrimaryPrincipal();

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        try {
            if (userInfo != null) {
                //获取用户所有角色以及角色下的操作权限信息
                List<Map<String, Object>> authorityList = this.authorityService.getAuthoritiesByUserId(userInfo.getPid());
                if (authorityList != null && authorityList.size() > 0) {
                    HashSet<String> roleIds = new HashSet<>();
                    HashSet<String> authorityIds = new HashSet<>();
                    for (Map<String, Object> authorityMap : authorityList) {
                        String roleId = (String) authorityMap.get("role_id");
                        String authorityId = (String) authorityMap.get("authority_code");
                        if (!roleIds.contains(roleId) && !StringUtils.isBlank(roleId)) {
                            roleIds.add(roleId);
                        }
                        if (!authorityIds.contains(authorityId) && !StringUtils.isBlank(authorityId)) {
                            authorityIds.add(authorityId);
                        }
                    }
                    info.addRoles(roleIds);
                    info.addStringPermissions(authorityIds);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = ((UsernamePasswordToken) authenticationToken);
        String userName = token.getUsername();
        UserInfo userInfo = this.userInfoService.getUserInfoByUserName(userName);
        if (userInfo == null) {
            throw new AuthenticationException();
        }
        return new SimpleAuthenticationInfo(userInfo, userInfo.getPassword(), getName());
    }
}
