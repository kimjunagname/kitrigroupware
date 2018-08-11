package com.groupware.common.dao;

import java.util.Map;

public interface CommonDao {

	int getNextSeq();
	void updateHit(int ntc_sq);
	
	int getNewArticleCount(int ntc_div_sq);
	int getTotalArticleCount(Map<String, String> map);
	
}
