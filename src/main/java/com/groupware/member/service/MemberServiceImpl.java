package com.groupware.member.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.member.dao.MemberDao;
import com.groupware.member.model.MemberDto;
import com.groupware.member.model.MemberRankDto;

@Service
public class MemberServiceImpl implements MemberService {


	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDto login(Map<String, String> map) {			
		return sqlSession.getMapper(MemberDao.class).login(map);
	}

	@Override
	public int registerMember(MemberDto dto) {		
		return sqlSession.getMapper(MemberDao.class).registerMember(dto);
	}

	@Override
	public MemberDto findId(Map<String, String> map) {		
		return sqlSession.getMapper(MemberDao.class).findId(map);
	}

	@Override
	public int emlCheck(Map<String, String> map) {		
		return sqlSession.getMapper(MemberDao.class).emlCheck(map);
	}

	@Override
	public MemberDto findPw(Map<String, String> map) {
		return sqlSession.getMapper(MemberDao.class).findPw(map);
	}

	@Override
	public List<MemberRankDto> dptlist() {		
		return sqlSession.getMapper(MemberDao.class).dptlist();
	}

	@Override
	public void deletemember(int stf_sq) {
		sqlSession.getMapper(MemberDao.class).deletemember(stf_sq);		
	}

	@Override
	public void modifymember(Map<String, String> map) {
		sqlSession.getMapper(MemberDao.class).modifymember(map);	
	}

}
