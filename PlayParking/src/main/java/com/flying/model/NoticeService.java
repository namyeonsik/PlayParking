package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("noticeservice")
public class NoticeService implements NoticeServiceInterface{

	@Autowired
	NoticeDAOInterface dao;

	public List<NoticeDTO> selectMembernotice() {
		return dao.selectMembernotice();
	}
	public NoticeDTO selectnoticeAll(int nno){
		return dao.selectnoticeAll(nno);
	}
	
	public List<NoticeDTO> selectAll(String aid){
		return dao.selectAll(aid);
	}
	
	public NoticeDTO selectByNno(int nno, String aid) {
		return dao.selectByNno(nno, aid);
	}

	public int insertNotice(NoticeDTO notice) {
		return dao.insertNotice(notice);
	}
	
	public int updateNotice(NoticeDTO notice) {
		return dao.updateNotice(notice);
	}
	
	public int deleteNotice(NoticeDTO notice) {
		return dao.deleteNotice(notice);
	}

	public List<NoticeDTO> selectByaid(String aid, int s, int l){
		return dao.selectByaid(aid, s, l);
	}

	public List<NoticeDTO> selectByaid11(String aid) {
		return dao.selectByaid11(aid);
	}
	public List<NoticeDTO> selectByaid2(String aid) {
		return dao.selectByaid2(aid);
	}
	
	public NoticeDTO selectText(int nno, String aid) {
		return dao.selectText(nno, aid);
	}
	public String selectMaxnno(String aid){
		return dao.selectMaxnno(aid);
	}

}
