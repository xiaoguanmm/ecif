package com.gt.ecif.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * 获取spring上下文工具类
 */
@Component
public class SpringContextUtils implements ApplicationContextAware {
    private static ApplicationContext applicationContext = null;
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        SpringContextUtils.applicationContext = applicationContext;
    }

    public static ApplicationContext getApplicationContext(){
        return applicationContext;
    }
    @SuppressWarnings("unchecked")
    public static <T> T getBean(String name){
        return (T) getApplicationContext().getBean(name);
    }
    public static <T> T getBean(Class<T> t){
        return getApplicationContext().getBean(t);
    }
}
