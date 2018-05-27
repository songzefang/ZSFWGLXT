package com.jcz.entity;

public class JsonResult {
	private int code; // 代号，表明这个结果是什么结果

	private String msg; // 返回信息

	private Object obj;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public JsonResult(int code, String msg, Object obj) {
		super();
		this.code = code;
		this.msg = msg;
		this.obj = obj;
	}

	public static JsonResult getJsonResult(int code, String msg, Object obj) {
		return new JsonResult(code, msg, obj);
	}

}
