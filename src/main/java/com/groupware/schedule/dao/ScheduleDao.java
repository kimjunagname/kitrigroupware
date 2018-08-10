package com.groupware.schedule.dao;

import java.util.List;

import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;

public interface ScheduleDao {
	List <ScheduleDivisionDto> getScheduleType(); 
	
	List <ScheduleDto> getScheduleList(int stf_sq); //사원번호로 list가져오기
	void addSchedule(ScheduleDto dto);
	
	String getToday();
}
