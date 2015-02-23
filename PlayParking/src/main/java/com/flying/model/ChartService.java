package com.flying.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("chartservice")
public class ChartService implements ChartServiceInterface{

	@Autowired
	ChartDAOInterface dao;

	public List<ChartDTO> selectReserve(int pid) {
		// TODO Auto-generated method stub
		return dao.selectReserve(pid);
	}

}
