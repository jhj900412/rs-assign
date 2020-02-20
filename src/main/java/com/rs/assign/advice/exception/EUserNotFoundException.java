package com.rs.assign.advice.exception;

public class EUserNotFoundException extends RuntimeException {
    public EUserNotFoundException(String msg, Throwable t) {
        super(msg, t);
    }

    public EUserNotFoundException(String msg) {
        super(msg);
    }

    public EUserNotFoundException() {
        super();
    }
}
