package com.jcz.entity;

import java.util.Date;


public class Bill {
	
	private Integer id;
	private Integer orgId;
	private Integer exhId;
	private Integer boothId;
	private String billCode;
	private Integer state;
	private Double totalPrice;
	private Date creationDate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getOrgId() {
		return orgId;
	}
	public void setOrgId(Integer orgId) {
		this.orgId = orgId;
	}
	public Integer getExhId() {
		return exhId;
	}
	public void setExhId(Integer exhId) {
		this.exhId = exhId;
	}
	public Integer getBoothId() {
		return boothId;
	}
	public void setBoothId(Integer boothId) {
		this.boothId = boothId;
	}
	public String getBillCode() {
		return billCode;
	}
	public void setBillCode(String billCode) {
		this.billCode = billCode;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

}
