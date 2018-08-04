package com.groupware.schedule.controller;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.member.model.MemberDto;
import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.model.ScheduleDto;
import com.groupware.schedule.service.ScheduleService;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/test.kitri")
	public ModelAndView test(Map<String, Object> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/schedule/test");
		
		//TODO 일정구분 DB에서 가져오기
		Map<String, String> stype= new HashMap<String, String>();
		stype.put("1", "1번 타입");
		stype.put("2", "2번 타입");
		stype.put("3", "3번 타입");
		//stype.put("일정구분번호", "일정명");
		
//		MemberDto memberDto= (MemberDto) session.getAttribute("userInfo");
//		if(memberDto!= null)
//			System.out.println("if 문 들어왔따!!!! \n 이름 >>> "+ memberDto.getStf_nm());
//		else
//			System.out.println("memberDto 못 받아왔다!!!");
		
		mav.addObject("stype", stype);
		mav.addObject("ScheduleDivisionDto", new ScheduleDivisionDto());
		
		return mav;
	}
	
	@RequestMapping(value="/sadd.kitri", method=RequestMethod.POST)
	public ModelAndView scheduleAdd(@RequestParam Map<String, String> map, @ModelAttribute("ScheduleDivisionDto") ScheduleDivisionDto scheduleDivisionDto) {
		System.out.println("scheduleDivisionDto(sselect) >>> "+ scheduleDivisionDto.getScd_nm());
		//select 값, map에 넣은 이름으로 나옴(일정구분번호)
		System.out.println("sname >> "+ map.get("sname"));
		System.out.println("sstart_date >> "+ map.get("sstart_date"));
		System.out.println("sstart_time >> "+ map.get("sstart_time"));
		System.out.println("send_date >> "+ map.get("send_date"));
		System.out.println("send_time >> "+ map.get("send_time"));
		System.out.println("content >> "+ map.get("content"));
		//TODO date에는 24시간 구분이 안됨..? 일단 오전만 가능... 해결해야함	
		
		ScheduleDto dto= new ScheduleDto();
		dto.setBs_scd_sq(Integer.parseInt(scheduleDivisionDto.getScd_nm())); //일정구분번호
		//TODO 사원번호 집어넣기
		dto.setStf_sq("1");
		dto.setBs_bs_nm(map.get("sname"));//제목
		dto.setBs_bs_scd_cnt(map.get("content")); //내용
		dto.setBs_scd_str_dt(map.get("sstart_date")+ " "+ map.get("sstart_time")+ ":00"); //시작일
		dto.setBs_scd_end_dt(map.get("send_date")+ " "+ map.get("send_time")+ ":00"); //종료일
		//form : 2018-08-08 00:00:00
		
		scheduleService.addSchedule(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/schedule/test");
		return mav;
	}
}
