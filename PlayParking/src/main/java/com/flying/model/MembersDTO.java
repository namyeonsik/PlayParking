package com.flying.model;

public class MembersDTO {

	private String mid;
	private int cid;
	private String mpwd;
	private String mname;
	private String mphone;
	private String memail;
	private int mpoint;
	
	public MembersDTO(){};
	public MembersDTO(String mid, int cid, String mpwd, String mname,
			String mphone, String memail, int mpoint) {
		super();
		this.mid = mid;
		this.cid = cid;
		this.mpwd = mpwd;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mpoint = mpoint;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
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
		return "MembersDTO [mid=" + mid + ", cid=" + cid + ", mpwd=" + mpwd
				+ ", mname=" + mname + ", mphone=" + mphone + ", memail="
				+ memail + ", mpoint=" + mpoint + "]";
	}
	
}
