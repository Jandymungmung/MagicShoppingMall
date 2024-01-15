package com.magic.www.biz.members;


import java.sql.Timestamp;

public class MembersVO {
	private String userId;
	private String userName;
	private String userNickname;
	private String userPsword;
	private String userEmail;
	private String sample4_postcode;
	private String sample4_roadAddress;
	private String sample4_jibunAddress;
	private String sample4_detailAddress;
	private String sample4_extraAddress;
	private String birthday;
	private String phoneNum;
	private String gender;
	private Timestamp regDate;
	private int point;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserPsword() {
		return userPsword;
	}
	public void setUserPsword(String userPsword) {
		this.userPsword = userPsword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getSample4_postcode() {
		return sample4_postcode;
	}
	public void setSample4_postcode(String sample4_postcode) {
		this.sample4_postcode = sample4_postcode;
	}
	public String getSample4_roadAddress() {
		return sample4_roadAddress;
	}
	public void setSample4_roadAddress(String sample4_roadAddress) {
		this.sample4_roadAddress = sample4_roadAddress;
	}
	public String getSample4_jibunAddress() {
		return sample4_jibunAddress;
	}
	public void setSample4_jibunAddress(String sample4_jibunAddress) {
		this.sample4_jibunAddress = sample4_jibunAddress;
	}
	public String getSample4_detailAddress() {
		return sample4_detailAddress;
	}
	public void setSample4_detailAddress(String sample4_detailAddress) {
		this.sample4_detailAddress = sample4_detailAddress;
	}
	public String getSample4_extraAddress() {
		return sample4_extraAddress;
	}
	public void setSample4_extraAddress(String sample4_extraAddress) {
		this.sample4_extraAddress = sample4_extraAddress;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
