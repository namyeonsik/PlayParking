package com.flying.model;

import java.util.List;

public interface ChartServiceInterface {

	public List<ChartDTO> selectReserve(int pid);

	public List<ChartDTO> selectBeforeReserve(int pid);

}
