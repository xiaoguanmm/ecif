package com.gt.ecif.config;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(SecurityManager securityManager){
        ShiroFilterFactoryBean factoryBean = new ShiroFilterFactoryBean();
        factoryBean.setSecurityManager(securityManager);
        factoryBean.setLoginUrl("/systemManage/toLogin");
        factoryBean.setSuccessUrl("/index");
        Map<String,String> filterMap = new LinkedHashMap<>();
        filterMap.put("/systemManage/verificationCode/kapatch","anon");
        filterMap.put("/systemManage/toLogin","anon");
        filterMap.put("/systemManage/login","anon");
        filterMap.put("/logout","logout");
        filterMap.put("/static/**","anon");
        filterMap.put("/**","authc");
        factoryBean.setFilterChainDefinitionMap(filterMap);
        return factoryBean;
    }

    @Bean
    public SecurityManager securityManager(EcifRealm ecifRealm){
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(ecifRealm);
        return securityManager;
    }

    @Bean
    public EcifRealm ecifRealm(){
        return new EcifRealm();
    }
}
