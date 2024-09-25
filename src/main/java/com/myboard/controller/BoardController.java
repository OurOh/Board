package com.myboard.controller;

import com.myboard.model.Board;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

public class BoardController {
	// 여기 클래스는 글 목록과List<A>성 페이지로 연결하는 역할을 합니다.
	private List<Board> boardList = new ArrayList<>();
	
	@GetMapping("/board/list")
	public String list(Model model) {
		model.addAttribute("boards", boardList);
		return "board/list";
	}
	
	@GetMapping("/board/write")
	public String writeForm() {
		return "board/write";
	}
	
	@PostMapping("/board/write")
	public String write(Board board) {
		boardList.add(board);
		return "redirect:/board/list";
	}
	
	
}
