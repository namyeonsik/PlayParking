package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("chartservice")
public class ChartService implements ChartServiceInterface {

	@Autowired
	ChartDAOInterface dao;

	public List<ChartDTO> selectReserve(int pid) {
		return dao.selectReserve(pid);
	}

	public List<ChartDTO> selectBeforeReserve(int pid) {
		return dao.selectBeforeReserve(pid);
	}

}
