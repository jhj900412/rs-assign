package com.rs.assign.advice.exception;

public class EUserLoginFailException extends RuntimeException {
	
	public EUserLoginFailException(String msg, Throwable t) {
        super(msg, t);
    }

    public EUserLoginFailException(String msg) {
        super(msg);
    }

    public EUserLoginFailException() {
        super();
    }

}
