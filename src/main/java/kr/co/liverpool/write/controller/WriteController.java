package kr.co.liverpool.write.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.write.service.WriteService;

@Controller
@RequestMapping("/write")
public class WriteController {

	
	@Autowired
	private WriteService writeService;
	
	@RequestMapping(value= {"", "/"}, method=RequestMethod.GET)
	public String write() {
		
		return "write/write";
	}
	
	//게시판 작성
	@RequestMapping(value= {""}, method=RequestMethod.POST)
	public String insertBoard(@ModelAttribute BoardVO boardVO) throws Exception {

		writeService.insertBoard(boardVO);
		return "redirect:/board";
	}
}
