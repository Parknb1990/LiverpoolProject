package kr.co.liverpool.foot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.foot.service.FootService;

@Controller
public class FootController {

	@Autowired
	FootService footService;
	
	@RequestMapping(value="/foot")
	public String foot(Model model) throws Exception {
		
		List<BoardVO> list = footService.selectFoot();
		model.addAttribute("list", list);
		
		return "foot/foot";
		
		
	}
}
