package com.gt.ecif.config.aspect;


import com.gt.ecif.config.aspect.annotation.Record;
import com.gt.ecif.utils.RedisUtils;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description 统计用户登录
 * @Author guantong
 * @Date 2020/3/12 22:49
 * @Version 1.0
 */
public class LoginRecord extends AbstractRecordExec {
    @Override
    protected void record(RedisUtils redisUtils, Record record, Object[] args, HttpServletRequest request) {
        redisUtils.incr(record.name(),1);
    }
}
