package kr.co.liverpool.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.food.service.FoodService;

@Controller
public class FoodController {

	@Autowired
	FoodService foodService;
	
	@RequestMapping(value="/food")
	public String food(Model model) throws Exception {
		
		List<BoardVO> list = foodService.selectFood();
		model.addAttribute("list", list);
		
		return "food/food";
	}
}
