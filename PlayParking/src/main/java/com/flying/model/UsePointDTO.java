package com.flying.model;

import java.util.Date;

public class UsePointDTO {

	private Date usedate;
	private String mid;
	private int pid;
	private int usepoint;

	public UsePointDTO() {
	};

	public UsePointDTO(Date usedate, String mid, int pid, int usepoint) {
		super();
		this.usedate = usedate;
		this.mid = mid;
		this.pid = pid;
		this.usepoint = usepoint;
	}

	public Date getUsedate() {
		return usedate;
	}

	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getUsepoint() {
		return usepoint;
	}

	public void setUsepoint(int usepoint) {
		this.usepoint = usepoint;
	}

	@Override
	public String toString() {
		return "UsePointDTO [usedate=" + usedate + ", mid=" + mid + ", pid="
				+ pid + ", usepoint=" + usepoint + "]";
	}
}
