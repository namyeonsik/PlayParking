package com.flying.model;

public class AdminDTO {

	private String aid;
	private int pid;
	private String apwd;

	public AdminDTO() {
	};

	public AdminDTO(String aid, int pid, String apwd) {
		super();
		this.aid = aid;
		this.pid = pid;
		this.apwd = apwd;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getApwd() {
		return apwd;
	}

	public void setApwd(String apwd) {
		this.apwd = apwd;
	}

	@Override
	public String toString() {
		return "AdminDTO [aid=" + aid + ", pid=" + pid + ", apwd=" + apwd + "]";
	}
}
