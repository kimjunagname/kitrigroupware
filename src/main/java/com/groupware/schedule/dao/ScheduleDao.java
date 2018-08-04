package com.groupware.schedule.dao;

import java.util.List;

import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;

public interface ScheduleDao {
	List <ScheduleDivisionDto> getListSchedule();
	void addSchedule(ScheduleDto dto);
}
