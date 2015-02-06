package com.flying.model;

import java.util.Date;

public class PayPointDTO {

	private Date paydate;
	private String mid;
	private int paypoint;
	
	public PayPointDTO(){};
	public PayPointDTO(Date paydate, String mid, int paypoint) {
		super();
		this.paydate = paydate;
		this.mid = mid;
		this.paypoint = paypoint;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getPaypoint() {
		return paypoint;
	}
	public void setPaypoint(int paypoint) {
		this.paypoint = paypoint;
	}
	@Override
	public String toString() {
		return "PayPointDTO [paydate=" + paydate + ", mid=" + mid
				+ ", paypoint=" + paypoint + "]";
	}
}
