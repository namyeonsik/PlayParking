package com.flying.model;

public class CarDTO {

	private int cid;
	private int cwidth;
	private int clength;
	private String cname;
	private String cbrand;
	
	public CarDTO(){}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getCwidth() {
		return cwidth;
	}

	public void setCwidth(int cwidth) {
		this.cwidth = cwidth;
	}

	public int getClength() {
		return clength;
	}

	public void setClength(int clength) {
		this.clength = clength;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCbrand() {
		return cbrand;
	}

	public void setCbrand(String cbrand) {
		this.cbrand = cbrand;
	}

	@Override
	public String toString() {
		return "CarDTO [cid=" + cid + ", cwidth=" + cwidth + ", clength="
				+ clength + ", cname=" + cname + ", cbrand=" + cbrand + "]";
	};
	
	
}
