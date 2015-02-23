package com.flying.model;

import java.util.List;

public interface ChartDAOInterface {
	public List<ChartDTO> selectReserve(int pid);
}
