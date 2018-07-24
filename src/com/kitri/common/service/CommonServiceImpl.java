package com.kitri.common.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.common.dao.CommonDao;
import com.groupware.common.service.CommonService;
import com.groupware.util.KitriConstance;
import com.groupware.util.PageNavigation;

@Service
public class CommonServiceImpl implements CommonService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public PageNavigation getPageNavigation(Map<String, String> map) {
		int listSize = KitriConstance.BOARD_LIST_SIZE;//TODO 나중에 앨범게시판 만들때 수정하자.
		int pageSize = KitriConstance.NAVIGATOR_SIZE;
		int pg = Integer.parseInt(map.get("pg"));
		PageNavigation navigator = new PageNavigation();
		navigator.setPageNo(pg);
		int newArticleCount = sqlSession.getMapper(CommonDao.class).getNewArticleCount(Integer.parseInt(map.get("bcode")));
		navigator.setNewArticleCount(newArticleCount);
		int totalArticleCount = sqlSession.getMapper(CommonDao.class).getTotalArticleCount(map);
		navigator.setTotalArticleCount(totalArticleCount);
		int totalPageCount = (totalArticleCount - 1) / listSize + 1;
		navigator.setTotalPageCount(totalPageCount);
		navigator.setNowFirst(pg <= pageSize);
		navigator.setNowEnd((totalPageCount - 1) / pageSize * pageSize < pg);
		return navigator;
	}


}








