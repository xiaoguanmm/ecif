package com.gt.ecif.exception;

import com.gt.ecif.common.EstateFundModelConstants;
import com.gt.ecif.common.I18nConstants;
import com.gt.ecif.exception.base.EstateFundException;

/**
 * file操作Exception
 * @author Administrator
 *
 */
public class FileException extends EstateFundException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public FileException(I18nConstants code, String defaultMessage) {
		
		super(EstateFundModelConstants.SYSTEM, code, defaultMessage);
		
	}

}
