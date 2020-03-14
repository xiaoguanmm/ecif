package com.gt.ecif.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * XSS过滤器
 * 拦截所以请求
 * @author guantong
 *
 */
@Component
@WebFilter(urlPatterns = "/*")
public class XSSFilter implements Filter{
	
	FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
        chain.doFilter(new XSSHttpServletRequestWrapper(req), response);
	}

	@Override
	public void destroy() {
		filterConfig = null;
	}

}
