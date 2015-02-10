package com.flying.model;

public interface PayPointServiceInterface {
	public PayPointDTO selectBymid(String mid);
	public int insertPoint(PayPointDTO point);
}
