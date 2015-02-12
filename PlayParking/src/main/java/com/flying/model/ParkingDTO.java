package com.flying.model;

public class ParkingDTO {
	private int pid;
	private int pfare;
	private int pwidth;
	private int plength;
	private int platefare;
	private int pamount;
	private int pcount;
	private String pname;
	private String plocation;
	private String pphone;
	private double x;
	private double y;	
	
	
	
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	
	public ParkingDTO(){};
	public ParkingDTO(int pid, int pfare, int pwidth, int plength,
			int platefare, int pamount,int pcount, String pname, String plocation,
			String pphone, double x, double y) {
		super();
		this.pid = pid;
		this.pfare = pfare;
		this.pwidth = pwidth;
		this.plength = plength;
		this.platefare = platefare;
		this.pamount = pamount;
		this.pcount=pcount;
		this.pname = pname;
		this.plocation = plocation;
		this.pphone = pphone;
		this.x = x;
		this.y = y;
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPfare() {
		return pfare;
	}
	public void setPfare(int pfare) {
		this.pfare = pfare;
	}
	public int getPwidth() {
		return pwidth;
	}
	public void setPwidth(int pwidth) {
		this.pwidth = pwidth;
	}
	public int getPlength() {
		return plength;
	}
	public void setPlength(int plength) {
		this.plength = plength;
	}
	public int getPlatefare() {
		return platefare;
	}
	public void setPlatefare(int platefare) {
		this.platefare = platefare;
	}
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPlocation() {
		return plocation;
	}
	public void setPlocation(String plocation) {
		this.plocation = plocation;
	}
	public String getPphone() {
		return pphone;
	}
	public void setPphone(String pphone) {
		this.pphone = pphone;
	}
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	@Override
	public String toString() {
		return "ParkingDTO [pid=" + pid + ", pfare=" + pfare + ", pwidth="
				+ pwidth + ", plength=" + plength + ", platefare=" + platefare
				+ ", pamount=" + pamount + ", pname=" + pname + ", plocation="
				+ plocation + ", pphone=" + pphone + ", x=" + x + ", y=" + y
				+ "]";
	}	
}
