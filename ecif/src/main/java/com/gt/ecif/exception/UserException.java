package com.gt.ecif.exception;

import com.gt.ecif.common.EstateFundModelConstants;
import com.gt.ecif.common.I18nConstants;
import com.gt.ecif.exception.base.EstateFundException;

public class UserException extends EstateFundException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UserException(I18nConstants code) {
		
		super(EstateFundModelConstants.SYSTEM,code,null);
		
	}

}
