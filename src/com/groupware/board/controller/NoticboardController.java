package com.groupware.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.board.model.NoticboardDto;
import com.groupware.board.service.NoticboardService;

@Controller
@RequestMapping("/notic")
public class NoticboardController {

	@Autowired
	private NoticboardService noticboardService;
	
	@RequestMapping("/notic.kitri")
	public String listNotic(Map<String, Object> map) {
		List<NoticboardDto> list = noticboardService.getNoticBoard();
		map.put("list", list);
		return "admin/board/boardmenu";
	}
	
}
