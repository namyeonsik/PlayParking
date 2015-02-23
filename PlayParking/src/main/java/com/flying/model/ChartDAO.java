package com.flying.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("chartdao")
public class ChartDAO implements ChartDAOInterface{

	@Autowired
	SqlSession session;


	public List<ChartDTO> selectReserve(int pid) {
		List<ChartDTO> chartlist =
				session.selectList("flying.chart.selectReserve", pid);
		return chartlist;
	}
	



}
