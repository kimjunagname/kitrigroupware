package com.groupware.board.dao;

import java.util.List;
import java.util.Map;

import com.groupware.board.model.BoardDto;
import com.groupware.member.model.MemberDto;

public interface BoardDao {
	List<BoardDto> listArticle(Map<String, String> map);	
	int writeArticle(BoardDto boardDto);
	BoardDto viewArticle(int ntc_sq);
	BoardDto getArticle(int ntc_sq);
	void modifyArticle(BoardDto boardDto);
	void deleteArticle(int ntc_sq);
}
