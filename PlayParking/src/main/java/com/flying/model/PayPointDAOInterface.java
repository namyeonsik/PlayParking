package com.flying.model;

import java.util.List;

public interface PayPointDAOInterface {
	public List<PayPointDTO> selectBymid(String mid);
	public int insertPoint(PayPointDTO point);
}
