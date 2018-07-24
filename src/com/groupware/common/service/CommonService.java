package com.groupware.common.service;

import java.util.Map;

import com.groupware.util.PageNavigation;

public interface CommonService {

	PageNavigation getPageNavigation(Map<String, String> map);
	
}
