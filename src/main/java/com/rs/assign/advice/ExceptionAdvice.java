package com.rs.assign.advice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.rs.assign.advice.domain.CommonResult;
import com.rs.assign.advice.exception.EAuthenticationEntryPointException;
import com.rs.assign.advice.exception.EBoardException;
import com.rs.assign.advice.exception.EUserExistException;
import com.rs.assign.advice.exception.EUserNotFoundException;
import com.rs.assign.advice.service.ExceptionService;
import com.rs.assign.advice.exception.EUserLoginFailException;


@RestControllerAdvice
public class ExceptionAdvice {

	@Autowired
    private MessageSource messageSource;
	@Autowired
    private ExceptionService responseService;

	@ExceptionHandler(EBoardException.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	protected CommonResult boardException(HttpServletRequest request, Exception e) {
		return responseService.getFailResult(Integer.valueOf(getMessage("boardNotFound.code")), getMessage("boardNotFound.msg") + "(" + e.getStackTrace() + ")");
	}

    @ExceptionHandler(EUserNotFoundException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    protected CommonResult userNotFound(HttpServletRequest request, EUserNotFoundException e) {
        return responseService.getFailResult(Integer.valueOf(getMessage("userNotFound.code")), getMessage("userNotFound.msg"));
    }
    
    @ExceptionHandler(EUserLoginFailException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    protected CommonResult userLoginFail(HttpServletRequest request, EUserLoginFailException e) {
        return responseService.getFailResult(Integer.valueOf(getMessage("userLoginFail.code")), getMessage("userLoginFail.msg"));
    }

    @ExceptionHandler(EAuthenticationEntryPointException.class)
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public CommonResult authenticationEntryPointException(HttpServletRequest request, EAuthenticationEntryPointException e) {
        return responseService.getFailResult(Integer.valueOf(getMessage("entryPointException.code")), getMessage("entryPointException.msg"));
    }

    @ExceptionHandler(AccessDeniedException.class)
    @ResponseStatus(HttpStatus.FORBIDDEN)
    public CommonResult accessDeniedException(HttpServletRequest request, AccessDeniedException e) {
        return responseService.getFailResult(Integer.valueOf(getMessage("accessDenied.code")), getMessage("accessDenied.msg"));
    }

    @ExceptionHandler(EUserExistException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public CommonResult communicationException(HttpServletRequest request, EUserExistException e) {
        return responseService.getFailResult(Integer.valueOf(getMessage("existingUser.code")), getMessage("existingUser.msg"));
    }

    private String getMessage(String code) {
        return getMessage(code, null);
    }

    private String getMessage(String code, Object[] args) {
        return messageSource.getMessage(code, args, LocaleContextHolder.getLocale());
    }
}
