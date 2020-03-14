package com.gt.ecif.config.aspect.annotation;

import com.gt.ecif.config.aspect.AbstractRecordExec;

import java.lang.annotation.*;

/**
 * @Description 记录操作，并缓存到redis
 * @Author guantong
 * @Date 2020/3/12 22:40
 * @Version 1.0
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Record {

    /**
     * 缓存类型
     * @return
     */
    public int TYPE();

    /**
     * 缓存名称
     * @return
     */
    public String name() default "";

    /**
     * 具体操作类
     * @return
     */
    public Class<? extends AbstractRecordExec> operation();
}
