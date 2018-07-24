package com.groupware.board.service;

import java.util.List;

import com.groupware.board.dao.BoardDao;
import com.groupware.board.model.BoardDto;

public interface BoardService {

	List<BoardDto> getListBoard();
	
}
