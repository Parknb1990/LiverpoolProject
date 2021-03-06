package kr.co.liverpool.away.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.liverpool.away.service.AwayService;
import kr.co.liverpool.common.vo.SchduleVO;

@Controller
public class AwayController {


	@Autowired
	private AwayService awayService;
	
	//어웨이 경기일정 데이터베이서에서 불러오기
	@RequestMapping(value="/away")
	public String away(Model model) throws Exception {

		List<SchduleVO> list = awayService.away();
		for (SchduleVO vo : list) {
			vo.setAwayYear(vo.getAwayDate().split("-")[0]);
			vo.setAwayMonth(vo.getAwayDate().split("-")[1]);
		}
		model.addAttribute("list", list);
		return "away/away2";
	}
}
