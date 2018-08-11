package com.groupware.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.groupware.board.model.BoardDto;
import com.groupware.board.service.BoardService;
import com.groupware.common.service.CommonService;
import com.groupware.member.model.MemberDto;
import com.groupware.util.PageNavigation;


@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardservice;
	
	@Autowired
	private CommonService commonService;
	
	@RequestMapping("/list.kitri")
	public ModelAndView list(@RequestParam Map<String, String> map) {		
		ModelAndView mav = new ModelAndView();	
		List<BoardDto> list = boardservice.listArticle(map);			
		PageNavigation navigator = commonService.getPageNavigation(map);
		navigator.setRoot("/board");
		navigator.makeNavigator();
		mav.addObject("list", list);
		mav.addObject("navigator", navigator);
		mav.setViewName("/board/list");
		return mav;
	}

	@RequestMapping(value="/write.kitri", method=RequestMethod.GET)
	public String write() {	
		return "/board/write";
	}
	
	@RequestMapping(value="/write.kitri", method=RequestMethod.POST)
	public String write(BoardDto boardDto, HttpSession session, Model model){		
		
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto != null) {
			boardDto.setStf_sq(memberDto.getStf_sq());		
			int ntc_sq = boardservice.writeArticle(boardDto);			
			if(ntc_sq != 0) {
				model.addAttribute("ntc_sq", ntc_sq);				
			} else {
				return "/board/writefail";
			}
		} else {
			return "/board/writefail";
		}
		return "/board/writeok";
		
	}
	
	@RequestMapping(value="/view.kitri", method=RequestMethod.GET)
	public String view(@RequestParam("ntc_sq") int ntc_sq, HttpSession session, ModelMap model) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto != null) {
			BoardDto boardDto = (BoardDto) boardservice.viewArticle(ntc_sq);
			model.addAttribute("article", boardDto);
		}			
		return "/board/view";
	}
	
	@RequestMapping(value="/modify.kitri", method=RequestMethod.GET)
	public ModelAndView modify(@RequestParam("ntc_sq") int ntc_sq) {	
		ModelAndView mav = new ModelAndView();	
		BoardDto boardDto = boardservice.getArticle(ntc_sq);
		mav.addObject("article", boardDto);
		mav.setViewName("/board/modify");
		return mav;
	}
	
	@RequestMapping(value="/modify.kitri", method=RequestMethod.POST)
	public String modify(@RequestParam("ntc_sq") int ntc_sq, @RequestParam("ntc_nm") String ntc_nm, @RequestParam("ntc_cnt") String ntc_cnt, Model model){	
		BoardDto boardDto = boardservice.getArticle(ntc_sq);
		boardDto.setNtc_nm(ntc_nm);
		boardDto.setNtc_cnt(ntc_cnt);
		boardservice.modifyArticle(boardDto);	
		model.addAttribute("article", boardDto);	
		return "/board/modifyok";
	}
	
	@RequestMapping("/delete.kitri")
	public String delete(@RequestParam("ntc_sq") int ntc_sq) {
		boardservice.deleteArticle(ntc_sq);
		return "/board/deleteok";
	}
			
}
