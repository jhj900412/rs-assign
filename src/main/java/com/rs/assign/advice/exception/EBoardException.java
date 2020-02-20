package com.rs.assign.advice.exception;

public class EBoardException extends RuntimeException {
    public EBoardException(String msg, Throwable t) {
        super(msg, t);
    }

    public EBoardException(String msg) {
        super(msg);
    }

    public EBoardException() {
        super();
    }
}
