package com.flying.model;

import java.util.List;

public interface NoticeServiceInterface {

	public List<NoticeDTO> selectMembernotice(int s, int l);

	public List<NoticeDTO> selectByaid(String aid, int s, int l);

	public List<NoticeDTO> selectAll(String aid);
	
	public NoticeDTO selectByNno(int nno, String aid);

	public NoticeDTO selectText(int nno, String aid);

	public int insertNotice(NoticeDTO notice);

	public int updateNotice(NoticeDTO notice);

	public int deleteNotice(NoticeDTO notice);

	public List<NoticeDTO> selectByaid11(String aid);

	public String selectMaxnno(String aid);

	public List<NoticeDTO> selectMembernotice2();
}
