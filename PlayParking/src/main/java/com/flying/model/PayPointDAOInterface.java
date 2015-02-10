package com.flying.model;

public interface PayPointDAOInterface {
	public PayPointDTO selectBymid(String mid);
	public int insertPoint(PayPointDTO point);
}
