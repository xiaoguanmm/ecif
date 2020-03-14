package com.gt.ecif.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 统一一场拦截处理器，用于处理在controller中抛出的异常
 */
@RestControllerAdvice
public class ExceptionHandler {
    private static final Logger logger = LoggerFactory.getLogger(ExceptionHandler.class);
    public Object exceptionHandler(Exception e){
        logger.info(e.getMessage(),e);
        return WebResult.buildResult()
                .setStatus(WebResult.FAIL)
                .setMsg("System error");
    }


}
