package kr.co.liverpool.humor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.humor.service.HumorService;

@Controller
public class HumorController {

	@Autowired
	HumorService humorService;
	
	@RequestMapping("/humor")
	public String humor(Model model) throws Exception {
		
		List<BoardVO> list = humorService.selectHumor();
		model.addAttribute("list", list);
		
		return "humor/humor";
	}
}
