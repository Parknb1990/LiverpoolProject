package kr.co.liverpool.freeboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.freeboard.service.FreeService;

@Controller
public class FreeController {

	@Autowired
	FreeService freeService;
	
	@RequestMapping(value="/freeboard")
	public String freeboard(Model model) throws Exception {
		
		List<BoardVO> list = freeService.selectFree();
		model.addAttribute("list", list);
		
		return "freeboard/freeboard";
	}
	
	
}
