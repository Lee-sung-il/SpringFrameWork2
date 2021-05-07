package com.ync.biz.user;

public class UserVO {
	private int seq;
	private String id;
	private String password;
	private String name;
	private String role;
	public int getSeq() {
		return seq;
	}
	public String getId() {
		return id;
	}
	public String getPassword() {
		return password;
	}
	public String getName() {
		return name;
	}
	public String getRole() {
		return role;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "UserVo [seq= " + seq + ", id ="
				+ id + ", password=" + password + ", name="
				+ name + ", role=" + role + "]";
	}
}
