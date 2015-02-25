package com.flying.model;

public class MembersDTO {

	private String mid;
	private String mpwd;
	private String mname;
	private String mphone;
	private String memail;
	private int mpoint;
	private int mcheck;

	public int getMcheck() {
		return mcheck;
	}

	public void setMcheck(int mcheck) {
		this.mcheck = mcheck;
	}

	public MembersDTO() {
	};

	public MembersDTO(String mid, String mpwd, String mname, String mphone,
			String memail, int mpoint, int mcheck) {
		super();
		this.mid = mid;
		this.mpwd = mpwd;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mpoint = mpoint;
		this.mcheck = mcheck;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public int getMpoint() {
		return mpoint;
	}

	public void setMpoint(int mpoint) {
		this.mpoint = mpoint;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	@Override
	public String toString() {
		return "MembersDTO [mid=" + mid + ", mpwd=" + mpwd + ", mname=" + mname
				+ ", mphone=" + mphone + ", memail=" + memail + ", mpoint="
				+ mpoint + ", mcheck=" + mcheck + "]";
	}

}
