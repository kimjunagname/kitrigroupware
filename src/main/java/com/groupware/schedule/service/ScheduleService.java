package com.groupware.schedule.service;

import java.util.List;

import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;

public interface ScheduleService {
	List <ScheduleDivisionDto> getScheduleType(); 
	
	String getScheduleList(int stf_sq); //사원번호로 list가져오기
	void addSchedule(ScheduleDto dto);
	
	String getToday();
}
