package com.flying.model;

import java.util.List;

public interface NoticeDAOInterface {
	public List<NoticeDTO> selectMembernotice();
	public NoticeDTO selectnoticeAll(int nno);
	public List<NoticeDTO> selectByaid(String aid);
	public List<NoticeDTO> selectByaid2(String aid);
	public NoticeDTO selectByNno(int nno, String aid);
	public NoticeDTO selectText(int nno, String aid);
	public List<NoticeDTO> selectAll(String aid);
	public int insertNotice(NoticeDTO notice);
	public int updateNotice(NoticeDTO notice);
	public int deleteNotice(NoticeDTO notice);
}
