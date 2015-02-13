package com.flying.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("noticedao")
public class NoticeDAO implements NoticeDAOInterface{

	@Autowired
	SqlSession session;

	public int insertNotice(NoticeDTO notice) {
		return session.insert("flying.notice.insertNotice", notice);
	}
	
	public int updateNotice(NoticeDTO notice) {
		return session.update("flying.notice.updateNotice", notice);
	}
	
	public int deleteNotice(NoticeDTO notice) {
		System.out.println("delete ≥Î∆ºΩ∫!!!!!!!!!!"+notice);
		return session.delete("flying.notice.deleteNotice", notice);
	}
	
	public NoticeDTO selectByNno(int nno, String aid) {
		Map<String,Object> map = new HashMap<String,Object>();			
		map.put("nno", nno); 
		map.put("aid", aid);		
		return session.selectOne("flying.notice.selectBynno",map);
	}
	
	public List<NoticeDTO> selectAll(String aid) {
		return session.selectList("flying.notice.selectAll",aid);
	}
	
	public NoticeDTO selectnoticeAll(int nno){
		return session.selectOne("flying.notice.selectnoticeAll");
	}

	public List<NoticeDTO> selectByaid(String aid) {
		return session.selectList("flying.notice.selectByaid",aid);
	}
	
	public List<NoticeDTO> selectByaid2(String aid) {
		return session.selectList("flying.notice.selectByaid2",aid);
	}

	public NoticeDTO selectText(int nno, String aid) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("nno", nno);
		map.put("aid", aid);
		System.out.println("map"+map);
		return session.selectOne("flying.notice.selectText", map);
	}
	
	public List<NoticeDTO> selectMembernotice() {
		return session.selectList("flying.notice.selectMembernotice");
	}

}
