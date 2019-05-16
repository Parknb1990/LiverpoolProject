package kr.co.liverpool.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.liverpool.common.vo.SchduleVO;
import kr.co.liverpool.home.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeServie;
	
	//리버풀 홈경기일정 데이터베이스에서 불러오기
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String home(Model model) throws Exception {
		
		//리스트에 홈 스케줄을 저장
		List<SchduleVO> list = homeServie.home();

		for (SchduleVO vo : list) {
			vo.setHomeYear(vo.getHomeDate().split("-")[0]);
			vo.setHomeMonth(vo.getHomeDate().split("-")[1]);
		}
		
		model.addAttribute("list", list);
	
		return "home/home2";
	}
}
