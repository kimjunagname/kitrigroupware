package com.groupware.schedule.service;

import java.sql.*;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.groupware.schedule.dao.ScheduleDao;
import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ScheduleDivisionDto> getScheduleType() {
		return sqlSession.getMapper(ScheduleDao.class).getScheduleType();
	}

	@Override
	public String getScheduleList(int stf_sq) {
		List<ScheduleDto> list= sqlSession.getMapper(ScheduleDao.class).getScheduleList(stf_sq);
		JSONObject json= new JSONObject();
		JSONArray array= new JSONArray();
		
		for(ScheduleDto dto: list) {
			JSONObject schedule= new JSONObject();
			schedule.put("bs_scd_sq", dto.getBs_scd_sq());
			schedule.put("scd_sq", dto.getScd_sq());
			schedule.put("stf_sq", dto.getStf_sq());
			schedule.put("bs_scd_nm", dto.getBs_scd_nm());
			schedule.put("bs_scd_cnt", dto.getBs_scd_cnt());
			schedule.put("bs_scd_str_dt", dto.getBs_scd_str_dt());
			schedule.put("bs_scd_end_dt", dto.getBs_scd_end_dt());
			
			array.put(schedule);
		}
		
		json.put("scheduleList", array);
		
		return json.toString();
	}

	@Override
	public void addSchedule(ScheduleDto dto) {
//		int cnt= 0;
//		ScheduleDto dto2= new ScheduleDto();
//		try {
//			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
//			
//			String sql= "insert into ScheduleDto (bs_bs_nm, bs_bs_scd_cnt, bs_scd_str_dt) \n";
//			sql+= "values (?, ?, to_date(?, 'yyyy-mm-dd hh:mi:ss'))";
//			//form : 2018-08-08 00:00:00
//			//제목, 내용, 시작일
//			PreparedStatement pstmt= con.prepareStatement(sql);
//			pstmt.setString(1, dto.getBs_bs_nm());
//			pstmt.setString(2, dto.getBs_bs_scd_cnt());
//			pstmt.setString(3, dto.getBs_scd_str_dt());
//			
//			System.out.println("DAO IN!!!!!!!!!!!!!!!!!!!!");
//			System.out.println("넣을값 >>> "+ dto.getBs_scd_str_dt());
//			
//			cnt= pstmt.executeUpdate();
//			pstmt.close();
//			
//			sql= "select * from ScheduleDto";
//			pstmt= con.prepareStatement(sql);
//			
//			ResultSet rs= pstmt.executeQuery();
//			
//			if(rs.next()) {
//				dto2.setBs_bs_nm(rs.getString("bs_bs_nm"));
//				dto2.setBs_bs_scd_cnt(rs.getString("bs_bs_scd_cnt"));
//				dto2.setBs_scd_str_dt(rs.getString("bs_scd_str_dt"));
//				System.out.println("가져온값 >>>" + rs.getString("bs_scd_str_dt"));
//			} else
//				System.out.println("if문 안들어갔다!!!!!!!!!!!!!!1");
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		sqlSession.getMapper(ScheduleDao.class).addSchedule(dto);
	}

	@Override
	public String getToday() {
		return sqlSession.getMapper(ScheduleDao.class).getToday();
	}
}
