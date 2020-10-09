package com.example.user.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

public class UserVo {

	private String dg_user_id;
	private String dg_user_pw;
	private String dg_user_tel;
	private int isaccountnonlocked;
	private int isaccountnonexpired;
	private int iscredentialnonexpired;
	private int isenabled;
	
	private Collection<? extends GrantedAuthority> authorities;

	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	public String getDg_user_id() {
		return dg_user_id;
	}

	public void setDg_user_id(String dg_user_id) {
		this.dg_user_id = dg_user_id;
	}

	public String getDg_user_pw() {
		return dg_user_pw;
	}

	public void setDg_user_pw(String dg_user_pw) {
		this.dg_user_pw = dg_user_pw;
	}

	public String getDg_user_tel() {
		return dg_user_tel;
	}

	public void setDg_user_tel(String dg_user_tel) {
		this.dg_user_tel = dg_user_tel;
	}

	public int getIsaccountnonlocked() {
		return isaccountnonlocked;
	}

	public void setIsaccountnonlocked(int isaccountnonlocked) {
		this.isaccountnonlocked = isaccountnonlocked;
	}

	public int getIsaccountnonexpired() {
		return isaccountnonexpired;
	}

	public void setIsaccountnonexpired(int isaccountnonexpired) {
		this.isaccountnonexpired = isaccountnonexpired;
	}

	public int getIscredentialnonexpired() {
		return iscredentialnonexpired;
	}

	public void setIscredentialnonexpired(int iscredentialnonexpired) {
		this.iscredentialnonexpired = iscredentialnonexpired;
	}

	public int getIsenabled() {
		return isenabled;
	}

	public void setIsenabled(int isenabled) {
		this.isenabled = isenabled;
	}

	@Override
	public String toString() {
		return "UserVo [dg_user_id=" + dg_user_id + ", dg_user_pw=" + dg_user_pw + ", dg_user_tel=" + dg_user_tel
				+ ", isaccountnonlocked=" + isaccountnonlocked + ", isaccountnonexpired=" + isaccountnonexpired
				+ ", iscredentialnonexpired=" + iscredentialnonexpired + ", isenabled=" + isenabled + ", authorities="
				+ authorities + "]";
	}
	
	

	
}
