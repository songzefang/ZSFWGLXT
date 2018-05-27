package com.jcz.entity;

public class Organiser {
	private Integer id;
	private String account;
	private String orgPwd;
	private String orgName;
	private String mobile;
	private String contact;
	private String location;
	private String email;
	private String theme;
	private String venueName;
	private String venueAddress;
	private Integer boothCount;
	private Integer state;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	
	public String getOrgPwd() {
		return orgPwd;
	}
	public void setOrgPwd(String orgPwd) {
		this.orgPwd = orgPwd;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getVenueName() {
		return venueName;
	}
	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}
	public String getVenueAddress() {
		return venueAddress;
	}
	public void setVenueAddress(String venueAddress) {
		this.venueAddress = venueAddress;
	}
	public Integer getBoothCount() {
		return boothCount;
	}
	public void setBoothCount(Integer boothCount) {
		this.boothCount = boothCount;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Organiser [id=" + id + ", account=" + account + ", orgpwd=" + orgPwd + ", orgName=" + orgName
				+ ", mobile=" + mobile + ", contact=" + contact + ", location=" + location + ", email=" + email
				+ ", theme=" + theme + ", venueName=" + venueName + ", venueAddress=" + venueAddress + ", boothCount="
				+ boothCount + ", state=" + state + "]";
	}
	
}
