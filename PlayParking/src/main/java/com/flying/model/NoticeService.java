package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("noticeservice")
public class NoticeService implements NoticeServiceInterface{

	@Autowired
	NoticeDAOInterface dao;

	public List<NoticeDTO> selectnoticeAll(){
		return dao.selectnoticeAll();
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

}
