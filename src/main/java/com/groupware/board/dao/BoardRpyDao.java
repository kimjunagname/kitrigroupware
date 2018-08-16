package com.groupware.board.dao;

import java.util.List;

import com.groupware.board.model.BoardRpyDto;

public interface BoardRpyDao {
	
	int writeRpy(BoardRpyDto boardRpyDto);
	List<BoardRpyDto>  listRpy(int ntc_sq);
	int modifyRpy(BoardRpyDto boardRpyDto);
	int deleteRpy(int rpy_sq);
	
}
