package com.flying.model;

public class ChartDTO {

	private int sumrtime;
	private String month;

	public int getSumrtime() {
		return sumrtime;
	}

	public void setSumrtime(int sumrtime) {
		this.sumrtime = sumrtime;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public ChartDTO(int pid, int sumrtime, String month) {
		super();
		this.sumrtime = sumrtime;
		this.month = month;
	}

	public ChartDTO() {
	}

	@Override
	public String toString() {
		return "ChartDTO [sumrtime=" + sumrtime + ", month=" + month + "]";
	}
}
