package com.rs.assign.advice.exception;

public class EAuthenticationEntryPointException extends RuntimeException {
    public EAuthenticationEntryPointException(String msg, Throwable t) {
        super(msg, t);
    }

    public EAuthenticationEntryPointException(String msg) {
        super(msg);
    }

    public EAuthenticationEntryPointException() {
        super();
    }
}
