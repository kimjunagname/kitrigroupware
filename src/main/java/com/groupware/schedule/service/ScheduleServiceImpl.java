package com.groupware.schedule.service;

import java.sql.*;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
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
	@Transactional
	public List<ScheduleDivisionDto> getListSchedule() {
		// TODO Auto-generated method stub
		return null;
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
}
