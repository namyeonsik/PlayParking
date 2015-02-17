package com.flying.model;

import java.util.List;

public interface UsePointServiceInterface {
	public List<UsePointDTO> selectBymid(String mid);
	public List<UsePointDTO> selectBytenmid(String mid);
	public int insertUsePoint(UsePointDTO point);
}
