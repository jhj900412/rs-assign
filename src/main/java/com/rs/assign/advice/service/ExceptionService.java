package com.rs.assign.advice.service;

import org.springframework.stereotype.Service;

import com.rs.assign.advice.domain.CommonResult;

@Service
public class ExceptionService {

	/*
	 * public enum CommonResponse { SUCCESS(0, "성공하였습니다.");
	 * 
	 * int code; String msg;
	 * 
	 * CommonResponse(int code, String msg) { this.code = code; this.msg = msg; }
	 * 
	 * public int getCode() { return code; }
	 * 
	 * public String getMsg() { return msg; } }
	 */

    public CommonResult getFailResult(int code, String msg) {
        CommonResult result = new CommonResult();
        result.setSuccess(false);
        result.setCode(code);
        result.setMsg(msg);
        return result;
    }
   
}
