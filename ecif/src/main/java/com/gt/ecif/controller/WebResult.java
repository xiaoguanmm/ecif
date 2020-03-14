package com.gt.ecif.controller;

import java.util.HashMap;
import java.util.Map;

/**
 * 返回给前端的数据模板
 */
public class WebResult {
    /**状态-成功*/
    public static final int SUCCESS = 0;
    /**状态-失败*/
    public static final int FAIL = 1;
    /**状态码*/
    private int status;
    /**提示消息*/
    private String msg;
    /**重定向url*/
    private String redirectUrl;
    /**是否返回*/
    private boolean back;
    /**是否刷新页面*/
    private boolean refresh;
    /**数据*/
    private Map<String,Object> data;

    private WebResult(){
        this.data = new HashMap<>();
        this.refresh = false;
        this.back = false;
        this.status = SUCCESS;
    }
    public static WebResult buildResult(){
        return new WebResult();
    }

    public int getStatus() {
        return status;
    }

    public WebResult setStatus(int status) {
        this.status = status;
        return this;
    }

    public String getMsg() {
        return msg;
    }

    public WebResult setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public WebResult setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
        return this;
    }

    public boolean isBack() {
        return back;
    }

    public WebResult setBack(boolean back) {
        this.back = back;
        return this;
    }

    public boolean isRefresh() {
        return refresh;
    }

    public WebResult setRefresh(boolean refresh) {
        this.refresh = refresh;
        return this;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public WebResult setData(String name,Object data) {
        this.data.put(name,data);
        return this;
    }
}
