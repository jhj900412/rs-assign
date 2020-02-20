package com.rs.assign.advice.exception;

public class EUserExistException extends RuntimeException {
    public EUserExistException(String msg, Throwable t) {
        super(msg, t);
    }

    public EUserExistException(String msg) {
        super(msg);
    }

    public EUserExistException() {
        super();
    }
}
