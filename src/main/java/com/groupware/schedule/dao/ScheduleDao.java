package com.groupware.schedule.dao;

import java.util.List;

import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;

public interface ScheduleDao {
	List <ScheduleDivisionDto> getScheduleType(); 
	
	List <ScheduleDto> getScheduleList(int stf_sq); //사원번호로 list가져오기
	
	void addSchedule(ScheduleDto dto);
	ScheduleDto getAddSchedule(int stf_sq);
	
	String getToday();
	
	void deleteSchedule(int bs_scd_sq);

	void modifySchedule(ScheduleDto scheduleDto);

	ScheduleDto getModifySchedule(int bs_scd_sq);
}
