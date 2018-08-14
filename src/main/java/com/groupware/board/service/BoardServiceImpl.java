package com.groupware.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.board.dao.BoardDao;
import com.groupware.board.model.BoardDto;
import com.groupware.common.dao.CommonDao;
import com.groupware.member.model.MemberDto;
import com.groupware.util.KitriConstance;



@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardDto> listArticle(Map<String, String> map) {		
		int pg = Integer.parseInt(map.get("pg"));
		int end = pg * KitriConstance.BOARD_LIST_SIZE;
		int start = end - KitriConstance.BOARD_LIST_SIZE;	
		map.put("start", start + "");
		map.put("end", end + "");
		return sqlSession.getMapper(BoardDao.class).listArticle(map);
	}

	@Override
	public int writeArticle(BoardDto boardDto) {	
		int ntc_sq = sqlSession.getMapper(CommonDao.class).getNextSeq();
		System.out.println(ntc_sq);
		boardDto.setNtc_sq(ntc_sq);
		return sqlSession.getMapper(BoardDao.class).writeArticle(boardDto) == 0 ? 0 : ntc_sq;
	}

	@Override
	public BoardDto viewArticle(int ntc_sq) {
		sqlSession.getMapper(CommonDao.class).updateHit(ntc_sq);
		BoardDto boardDto = sqlSession.getMapper(BoardDao.class).viewArticle(ntc_sq);
		if(boardDto != null) {
			boardDto.setNtc_cnt(boardDto.getNtc_cnt().replaceAll("\n", "<br>"));
		}
		return boardDto;
	}
	
	@Override
	public BoardDto getArticle(int ntc_sq) {		
		return sqlSession.getMapper(BoardDao.class).getArticle(ntc_sq);
	}	

	@Override
	public void modifyArticle(BoardDto boardDto) {
		sqlSession.getMapper(BoardDao.class).modifyArticle(boardDto);		
	}

	@Override
	public void deleteArticle(int ntc_sq) {
		sqlSession.getMapper(BoardDao.class).deleteArticle(ntc_sq);
	}


}
