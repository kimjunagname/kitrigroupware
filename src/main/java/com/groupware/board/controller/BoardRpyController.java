package com.groupware.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.groupware.board.model.BoardRpyDto;
import com.groupware.board.service.BoardRpyService;
import com.groupware.member.model.MemberDto;


@Controller
public class BoardRpyController {

	@Autowired
	private BoardRpyService boardRpyService;
	
	@RequestMapping(value="/rpy", method=RequestMethod.POST, headers={"Content-type=application/json"}, produces="text/plain;charset=UTF-8")
	public @ResponseBody String write(@RequestBody BoardRpyDto boardRpyDto, HttpSession session) {		
		
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");		
		if(memberDto != null) {
			boardRpyDto.setStf_sq(memberDto.getStf_sq());				
			int cnt = boardRpyService.writeRpy(boardRpyDto);	
		}
		String rpylist = boardRpyService.listRpy(boardRpyDto.getNtc_sq());
		return rpylist;
	}
	
	@RequestMapping(value="/rpy/{ntc_sq}", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public @ResponseBody String list(@PathVariable(value="ntc_sq") int ntc_sq) {
		String rpylist = boardRpyService.listRpy(ntc_sq);
		return rpylist;
	}
	@RequestMapping(value="/rpy/{rpy_sq}", method=RequestMethod.DELETE)
	public @ResponseBody String delete(@PathVariable(value="rpy_sq") int rpy_sq) {	
		int cnt = boardRpyService.deleteRpy(rpy_sq);
		return "";
	}
	
	@RequestMapping(value="/rpy", method=RequestMethod.PUT, headers={"Content-type=application/json"}, produces="text/plain;charset=UTF-8")
	public @ResponseBody String modify(@RequestBody BoardRpyDto boardRpyDto, HttpSession session) {		
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");		
		if(memberDto != null) {			
			int cnt = boardRpyService.modifyRpy(boardRpyDto);	
		}
		String rpylist = boardRpyService.listRpy(boardRpyDto.getNtc_sq());			
		return rpylist;
	}
	
	
}
