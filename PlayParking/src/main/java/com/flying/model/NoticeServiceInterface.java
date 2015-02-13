package com.flying.model;

import java.util.List;

public interface NoticeServiceInterface {

	public List<NoticeDTO> selectnoticeAll();
	public List<NoticeDTO> selectByaid(String aid);
	public List<NoticeDTO> selectAll(String aid);
	public NoticeDTO selectByNno(int nno, String aid);
	public NoticeDTO selectText(int nno, String aid);
	public int insertNotice(NoticeDTO notice);
	public int updateNotice(NoticeDTO notice);
	public int deleteNotice(NoticeDTO notice);
}
