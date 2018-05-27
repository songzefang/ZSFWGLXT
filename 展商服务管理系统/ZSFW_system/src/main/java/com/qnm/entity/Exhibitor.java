package com.qnm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.JSON;

public class Exhibitor {

	private Integer id;
	/*
	 * 基本信息
	 */
	private String comName;  
	private String comAddress;
	private String street;  //具体街道
	private String comEnglishName;
	private String comEnlishAddress; //公司英文地址
	private String website;
	private String postCode;  //邮政编码
	private String email;
	private String comPhone;
	/*
	 * 其它信息
	 */
	private String comAbbreviation; //公司简称
	private String comType; //公司性质
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date establishDate;
	private String employeeCount; //员工数量
	private String registeredCapital; //注册资金
	private String industry; //所属行业
	private String productBrand; //产品品牌
	/*
	 * 证件
	 */
	private String businessLicense; //商业执照
	private String trademarkRegistrationCertificate; //商标注册证
	private String authorization; //授权证书
	private String patentGertificate; //专利证书
	/*
	 * 收件	
	 */
	private String receiveCompany; //收件公司
	private String receiveAddress;
	private String receivePhone;
	private String recipient; //收件人

	private String account; //登录账户
	private String exhPwd;
	private String registrant; //注册人
	private String registPhone; //注册手机
	private Integer state; //审核状态
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}

	public String getComEnglishName() {
		return comEnglishName;
	}
	public void setComEnglishName(String comEnglishName) {
		this.comEnglishName = comEnglishName;
	}
	public String getComAddress() {
		return comAddress;
	}
	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}
	public String getComEnlishAddress() {
		return comEnlishAddress;
	}
	public void setComEnlishAddress(String comEnlishAddress) {
		this.comEnlishAddress = comEnlishAddress;
	}
	
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComPhone() {
		return comPhone;
	}
	public void setComPhone(String comPhone) {
		this.comPhone = comPhone;
	}
	public String getComAbbreviation() {
		return comAbbreviation;
	}
	public void setComAbbreviation(String comAbbreviation) {
		this.comAbbreviation = comAbbreviation;
	}
	public String getComType() {
		return comType;
	}
	public void setComType(String comType) {
		this.comType = comType;
	}
	
	public Date getEstablishDate() {
		return establishDate;
	}
	public void setEstablishDate(Date establishDate) {
		this.establishDate = establishDate;
	}
	public String getEmployeeCount() {
		return employeeCount;
	}
	public void setEmployeeCount(String employeeCount) {
		this.employeeCount = employeeCount;
	}
	public String getRegisteredCapital() {
		return registeredCapital;
	}
	public void setRegisteredCapital(String registeredCapital) {
		this.registeredCapital = registeredCapital;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getProductBrand() {
		return productBrand;
	}
	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	public String getBusinessLicense() {
		return businessLicense;
	}
	public void setBusinessLicense(String businessLicense) {
		this.businessLicense = businessLicense;
	}
	public String getTrademarkRegistrationCertificate() {
		return trademarkRegistrationCertificate;
	}
	public void setTrademarkRegistrationCertificate(String trademarkRegistrationCertificate) {
		this.trademarkRegistrationCertificate = trademarkRegistrationCertificate;
	}
	public String getAuthorization() {
		return authorization;
	}
	public void setAuthorization(String authorization) {
		this.authorization = authorization;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getPatentGertificate() {
		return patentGertificate;
	}
	public void setPatentGertificate(String patentGertificate) {
		this.patentGertificate = patentGertificate;
	}
	public String getReceiveCompany() {
		return receiveCompany;
	}
	public void setReceiveCompany(String receiveCompany) {
		this.receiveCompany = receiveCompany;
	}
	public String getReceiveAddress() {
		return receiveAddress;
	}
	public void setReceiveAddress(String receiveAddress) {
		this.receiveAddress = receiveAddress;
	}
	public String getReceivePhone() {
		return receivePhone;
	}
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getExhPwd() {
		return exhPwd;
	}
	public void setExhPwd(String exhPwd) {
		this.exhPwd = exhPwd;
	}
	public String getRegistrant() {
		return registrant;
	}
	public void setRegistrant(String registrant) {
		this.registrant = registrant;
	}
	public String getRegistPhone() {
		return registPhone;
	}
	public void setRegistPhone(String registPhone) {
		this.registPhone = registPhone;
	}
	@Override
	public String toString() {
		return JSON.toJSONString(this);
	}



}
