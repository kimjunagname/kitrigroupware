package com.groupware.schedule.service;

import java.util.List;

import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;

public interface ScheduleService {
	List <ScheduleDivisionDto> getListSchedule();
	void addSchedule(ScheduleDto dto);
}
