package com.flying.model;

import java.util.Date;

public class NoticeDTO {

	private int nno;
	private String ntitle;
	private String ntext;
	private Date ndate;
	private String aid;

	/* private String npname; */

	public NoticeDTO() {
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNtext() {
		return ntext;
	}

	public void setNtext(String ntext) {
		this.ntext = ntext;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public NoticeDTO(int nno, String ntitle, String ntext, Date ndate,
			String aid) {
		super();
		this.nno = nno;
		this.ntitle = ntitle;
		this.ntext = ntext;
		this.ndate = ndate;
		this.aid = aid;
	}

	@Override
	public String toString() {
		return "NoticeDTO [nno=" + nno + ", ntitle=" + ntitle + ", ntext="
				+ ntext + ", ndate=" + ndate + ", aid=" + aid + "]";
	}

}
