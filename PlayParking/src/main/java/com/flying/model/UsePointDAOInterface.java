package com.flying.model;

import java.util.List;

public interface UsePointDAOInterface {
	public List<UsePointDTO> selectBymid(String mid);
	public int insertUsePoint(UsePointDTO point);
}
