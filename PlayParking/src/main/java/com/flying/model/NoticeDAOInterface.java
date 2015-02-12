package com.flying.model;

import java.util.List;

public interface NoticeDAOInterface {
	public List<NoticeDTO> selectnoticeAll();
	public NoticeDTO selectByNno(int nno, String aid);
	public List<NoticeDTO> selectAll(String aid);
	public int insertNotice(NoticeDTO notice);
	public int updateNotice(NoticeDTO notice);
	public int deleteNotice(NoticeDTO notice);
}
