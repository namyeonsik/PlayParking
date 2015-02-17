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
		System.out.println("delete 노티스!!!!!!!!!!"+notice);
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

	public List<NoticeDTO> selectByaid(String aid, int s, int l) { //페이징때문에 s,l 추가
		Map<String,Object> map = new HashMap<String,Object>();			
		map.put("aid", aid);
		map.put("s", s); 
		map.put("l", l); 
		return session.selectList("flying.notice.selectByaid",map);
	}
	
	public List<NoticeDTO> selectByaid11(String aid) { //리스트 전체 갯수 구하려고 만든거
		return session.selectList("flying.notice.selectByaid11",aid);
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
