package com.groupware.board.service;

import com.groupware.board.model.BoardRpyDto;


public interface BoardRpyService {

	int writeRpy(BoardRpyDto boardRpyDto);
	String listRpy(int ntc_sq);
	int modifyRpy(BoardRpyDto boardRpyDto);
	int deleteRpy(int rpy_sq);
	
}
