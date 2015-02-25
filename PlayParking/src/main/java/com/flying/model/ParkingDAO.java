package com.flying.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("parkingdao")
public class ParkingDAO implements ParkingDAOInterface {

	@Autowired
	SqlSession session;

	public List<ParkingDTO> selectByplocation(String plocation) {
		return session
				.selectList("flying.parking.selectByplocation", plocation);
	}

	// 절약형지각형안전형
	public List<ParkingDTO> selectBymakchum_1(String plocation) {
		return session
				.selectList("flying.parking.selectBymakchum_1", plocation);
	}

	// 절약형지각형안전형
	public List<ParkingDTO> selectBymakchum_2(String plocation) {
		return session
				.selectList("flying.parking.selectBymakchum_2", plocation);
	}

	// 절약형지각형안전형
	public List<ParkingDTO> selectBymakchum_3(String plocation) {
		return session
				.selectList("flying.parking.selectBymakchum_3", plocation);
	}

	public ParkingDTO selectBypid(int pid) {
		return session.selectOne("flying.parking.selectBypid", pid);
	}

	public int updateParking(ParkingDTO parking) {
		return session.update("flying.parking.updateParking", parking);
	}

	public List<ReservationDTO> seachReservationBypid(int pid) {
		return session.selectList("flying.parking.seachReservationBypid", pid);
	}

	public int updateParkingPcount(ParkingDTO parking) {
		return session.update("flying.parking.updateParkingPcount", parking);
	}

	public int checkCount(int pid) {
		return session.selectOne("flying.parking.checkCount", pid);
	}

	public int checkAmount(int pid) {
		return session.selectOne("flying.parking.checkAmount", pid);
	}

	public List<ParkingDTO> selectByAround(String plocation, int pid) {
		List<ParkingDTO> aroundparkinglist = null;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("plocation", plocation);
		map.put("pid", pid);
		aroundparkinglist = session.selectList("flying.parking.selectByAround",
				map);
		return aroundparkinglist;
	}
}
