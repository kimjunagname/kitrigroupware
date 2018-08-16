package com.groupware.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.board.dao.BoardRpyDao;
import com.groupware.board.model.BoardRpyDto;


@Service
public class BoardRpyServiceImpl implements BoardRpyService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int writeRpy(BoardRpyDto boardRpyDto) {
	
		return sqlSession.getMapper(BoardRpyDao.class).writeRpy(boardRpyDto);
	}

	@Override
	public String listRpy(int ntc_sq) {
		List<BoardRpyDto> list = sqlSession.getMapper(BoardRpyDao.class).listRpy(ntc_sq);
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray();
		for(BoardRpyDto boardRpyDto : list) {
			JSONObject rpy = new JSONObject();
			rpy.put("rpy_sq", boardRpyDto.getRpy_sq());
			rpy.put("ntc_sq", boardRpyDto.getNtc_sq());
			rpy.put("stf_sq", boardRpyDto.getStf_sq());
			rpy.put("stf_nm", boardRpyDto.getStf_nm());
			rpy.put("stf_pt_rt", boardRpyDto.getStf_pt_rt());
			rpy.put("stf_pt_nm", boardRpyDto.getStf_pt_nm());			
			rpy.put("rtf_cnt", boardRpyDto.getRtf_cnt());
			rpy.put("rtf_dt", boardRpyDto.getRtf_dt());
			rpy.put("rpy_mod", boardRpyDto.getRpy_mod());
			jarray.put(rpy);
		}
		json.put("rpylist", jarray);
		return json.toString();
	}

	@Override
	public int modifyRpy(BoardRpyDto boardRpyDto) {	
		return sqlSession.getMapper(BoardRpyDao.class).modifyRpy(boardRpyDto);
	}

	@Override
	public int deleteRpy(int rpy_sq) {		
		return sqlSession.getMapper(BoardRpyDao.class).deleteRpy(rpy_sq);
	}



}
