package com.jcz.entity;

import java.math.BigDecimal;

public class Booth {
	private Integer id;
	private Integer orgId;
	
	private Integer style;
	private Integer state;
	private String boothCode;
	private String picture;
	private String size;
	private BigDecimal price;
	
	public Booth() {
		super();
	}
	public Booth(Integer id, Integer style, String picture, String size, BigDecimal price) {
		super();
		this.id = id;
		this.style = style;
		this.picture = picture;
		this.size = size;
		this.price = price;
	}
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
	
	public Integer getStyle() {
		return style;
	}
	public void setStyle(Integer style) {
		this.style = style;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getBoothCode() {
		return boothCode;
	}
	public void setBoothCode(String boothCode) {
		this.boothCode = boothCode;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Booth [id=" + id + ", orgId=" + orgId + ",  style=" + style + ", state=" + state
				+ ", boothCode=" + boothCode + ", picture=" + picture + ", size=" + size + ", price=" + price + "]";
	}
	
}
