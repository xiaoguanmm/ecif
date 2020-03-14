package com.gt.ecif.config.aspect;

import com.gt.ecif.config.aspect.annotation.Record;
import com.gt.ecif.utils.RedisUtils;
import com.gt.ecif.utils.ServletUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * @Description 切面类，用户记录操作到缓存
 * @Author guantong
 * @Date 2020/3/12 22:44
 * @Version 1.0
 */
@Component
@Aspect
@EnableAsync
public class AbstractRecordExec {

    @Autowired
    RedisUtils redisUtils;
    /**
     * 织入点
     */
    @Pointcut("@annotation(com.gt.ecif.config.aspect.annotation.Record)")
    public void logPointCut(){

    }

    /**
     * 方法返回前执行
     * @param joinPoint
     */
    @AfterReturning(pointcut="logPointCut()")
    public void afterReturning(JoinPoint joinPoint){
                /*处理日志*/
        handleRecord(joinPoint);
    }

    /***
     * 记录操作
     * @param joinPoint
     */
    @Async
    public void handleRecord(JoinPoint joinPoint) {
        Record record = getAnnotationLog(joinPoint);
        if(record==null){
            return ;
        }
        HttpServletRequest request = ServletUtils.getRequest();
        Class<? extends AbstractRecordExec> operation = record.operation();
        try {
            AbstractRecordExec concareteRecord = operation.newInstance();
            concareteRecord.record(redisUtils,record,joinPoint.getArgs(),request);
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }

    }
    protected void record(RedisUtils redisUtils, Record record, Object[] args, HttpServletRequest request){

    }

    /**
     * 获取@Log参数
     * @param joinPoint
     * @return
     */
    private Record getAnnotationLog(JoinPoint joinPoint) {
        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method method = methodSignature.getMethod();
        if (method != null){
            return method.getAnnotation(Record.class);
        }
        return null;
    }
}
