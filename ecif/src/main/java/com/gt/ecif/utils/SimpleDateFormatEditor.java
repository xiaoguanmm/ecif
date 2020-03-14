package com.gt.ecif.utils;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 日期绑定
 * @company upjf.com
 * @author guantong
 *
 */
public class SimpleDateFormatEditor extends PropertyEditorSupport{
	 private final Logger logger = LoggerFactory.getLogger(SimpleDateFormatEditor.class);
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		if(StringUtils.isNotEmpty(text)){
			try {
				date = sdf.parse(text);
			} catch (ParseException e) {
				sdf = new SimpleDateFormat("yyyy-MM-dd");
				try {
					date = sdf.parse(text);
				} catch (ParseException e1) {
					logger.info("自动绑定日期数据异常:"+e1);
				}
			}
		}
		setValue(date);
	}

}
