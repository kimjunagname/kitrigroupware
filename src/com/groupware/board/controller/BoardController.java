package com.groupware.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.adminmanager.service.AdminmanagerService;
import com.groupware.board.model.BoardDto;
import com.groupware.board.service.BoardService;

@Controller
@RequestMapping("/Board")
public class BoardController {

	@Autowired
	private BoardService boardservice;
	
	@RequestMapping("/Board.kitri")
	public String listBoard(Map<String, Object> map) {
		List<BoardDto> list = boardservice.getListBoard();
		map.put("menulist", list);
		return "admin/board/boardmenu";
	}
	
}
