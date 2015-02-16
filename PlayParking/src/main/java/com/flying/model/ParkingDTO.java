package com.flying.model;

public class ParkingDTO {
	private int pid;
	private int pfare;
	private double pwidth;
	private double plength;
	private int platefare;
	private int pamount; //
	private int pcount; //
	private String pname;
	private String plocation;
	private String pphone;
	private double x;
	private double y;	
	private String pimage;	
	private String pimage2;	
	private String pimage3;	
	private String paddress;
	private String ptip;
	
	public int getPcount() {
		return pcount;
	}
	public void setPcount(int pcount) {
		this.pcount = pcount;
	}
	
	public ParkingDTO(){};
	public ParkingDTO(int pid, int pfare, double pwidth, double plength,
			int platefare, int pamount,int pcount, String pname, String plocation,
			String pphone, double x, double y, String pimage,String pimage2,String pimage3,String paddress,String ptip) {
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
		this.pimage = pimage;
		this.pimage2 = pimage2;
		this.pimage3 = pimage3;
		this.paddress = paddress;
		this.ptip = ptip;
	}
	
	
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	public String getPtip() {
		return ptip;
	}
	public void setPtip(String ptip) {
		this.ptip = ptip;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}	
	public String getPimage2() {
		return pimage2;
	}
	public void setPimage2(String pimage2) {
		this.pimage2 = pimage2;
	}
	public String getPimage3() {
		return pimage3;
	}
	public void setPimage3(String pimage3) {
		this.pimage3 = pimage3;
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
	public double getPwidth() {
		return pwidth;
	}
	public void setPwidth(double pwidth) {
		this.pwidth = pwidth;
	}
	public double getPlength() {
		return plength;
	}
	public void setPlength(double plength) {
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
				+ ", pamount=" + pamount + ", pcount=" + pcount + ", pname="
				+ pname + ", plocation=" + plocation + ", pphone=" + pphone
				+ ", x=" + x + ", y=" + y + ", pimage=" + pimage + ", pimage2="
				+ pimage2 + ", pimage3=" + pimage3 + ", paddress=" + paddress + ""
						+ ", ptip=" + ptip + "]";
	}
}
