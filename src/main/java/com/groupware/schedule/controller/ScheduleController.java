package com.groupware.schedule.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView viewSchedule(Map<String, Object> map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/schedule/test");
		
//		MemberDto memberDto= (MemberDto) session.getAttribute("userInfo");
//		if(memberDto!= null)
//			System.out.println("if 문 들어왔따!!!! \n 이름 >>> "+ memberDto.getStf_nm());
//		else
//			System.out.println("memberDto 못 받아왔다!!!");
		
		// 일정구분
		List<ScheduleDivisionDto> typeList= scheduleService.getScheduleType();
		Map<String, String> stype= new HashMap<String, String>();
		
		for (int i = 0; i < typeList.size(); i++) {
			stype.put(typeList.get(i).getScd_sq()+ "", typeList.get(i).getScd_nm());
		}
		//stype.put("일정구분번호", "일정명");
		
		mav.addObject("stype", stype);
		mav.addObject("ScheduleDivisionDto", new ScheduleDivisionDto());
		
		String today= scheduleService.getToday();
		mav.addObject("today", today); //return type > String
		
		return mav;
	}
	
	@RequestMapping(value="/slist/{stf_sq}", method=RequestMethod.POST, produces = "application/json; charset=utf8")
	public @ResponseBody String list(@PathVariable (value="stf_sq") int stf_sq) {
		// 스케쥴리스트 가져오기, json 형태로 된 string 타입
		String scheduleList= scheduleService.getScheduleList(stf_sq);
		
		System.out.println(scheduleList);
		
		return scheduleList;
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
		
		ScheduleDto dto= new ScheduleDto();
		dto.setScd_sq(Integer.parseInt(scheduleDivisionDto.getScd_nm())); //일정구분번호
		//TODO 사원번호 집어넣기
		dto.setStf_sq("62");
		dto.setBs_scd_nm(map.get("sname"));//제목
		dto.setBs_scd_cnt(map.get("content")); //내용
		dto.setBs_scd_str_dt(map.get("sstart_date")+ " "+ map.get("sstart_time")+ ":00"); //시작일
		dto.setBs_scd_end_dt(map.get("send_date")+ " "+ map.get("send_time")+ ":00"); //종료일
		//form : 2018-08-08 00:00:00
		
		scheduleService.addSchedule(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/schedule/test");
		return mav;
	}
	
	@RequestMapping(value="/sadd.kitri", method=RequestMethod.PUT, produces = "application/json; charset=utf8")
	public @ResponseBody String addSchedule(@RequestBody ScheduleDto scheduleDto) {
		System.out.println(scheduleDto.toString());
		
		scheduleService.addSchedule(scheduleDto);
		
		// httpsession에서 stf_sq 얻어오기
		int stf_sq= 62; // 임의 사원번호
		
		// 사원의 맨마지막 스케쥴 얻어오기
		String newschedule= scheduleService.getAddSchedule(stf_sq);
		
		System.out.println("newschedule >>>> " + newschedule);
		
		return newschedule;
	}
	
	@RequestMapping(value="/sdelete/{bs_scd_sq}", method=RequestMethod.GET)
	public @ResponseBody int deleteSchedule(@PathVariable int bs_scd_sq) {
		scheduleService.deleteSchedule(bs_scd_sq);
		return bs_scd_sq;
	}
	
	@RequestMapping(value="/smodify.kitri", method=RequestMethod.PUT, produces = "application/json; charset=utf8")
	public @ResponseBody String modifySchedule(@RequestBody ScheduleDto scheduleDto) {
		scheduleService.modifySchedule(scheduleDto);
		
		// 가져온 일정번호로 변경된 값 리턴해주기
		String modifySchedule= scheduleService.getModifySchedule(scheduleDto.getBs_scd_sq());
		
		System.out.println("modifySchedule >>> "+ modifySchedule);
		
		return modifySchedule;
	}
}
