package com.flying.model;

import java.util.Date;

public class ReservationDTO {

	int rid;
	int pid;
	String mid;
	Date rstart;
	Date rend;
	int rtime;
	int rextrafare;
	
	public ReservationDTO(){};
	public ReservationDTO(int rid, int pid, String mid, Date rstart, Date rend,
			int rtime, int rextrafare) {
		super();
		this.rid = rid;
		this.pid = pid;
		this.mid = mid;
		this.rstart = rstart;
		this.rend = rend;
		this.rtime = rtime;
		this.rextrafare = rextrafare;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public Date getRstart() {
		return rstart;
	}
	public void setRstart(Date rstart) {
		this.rstart = rstart;
	}
	public Date getRend() {
		return rend;
	}
	public void setRend(Date rend) {
		this.rend = rend;
	}
	public int getRtime() {
		return rtime;
	}
	public void setRtime(int rtime) {
		this.rtime = rtime;
	}
	public int getRextrafare() {
		return rextrafare;
	}
	public void setRextrafare(int rextrafare) {
		this.rextrafare = rextrafare;
	}
	@Override
	public String toString() {
		return "ReservationDTO [rid=" + rid + ", pid=" + pid + ", mid=" + mid
				+ ", rstart=" + rstart + ", rend=" + rend + ", rtime=" + rtime
				+ ", rextrafare=" + rextrafare + "]";
	}
}
