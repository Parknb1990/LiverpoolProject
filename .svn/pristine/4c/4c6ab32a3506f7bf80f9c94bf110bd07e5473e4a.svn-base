package kr.co.liverpool.game.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.game.service.GameService;

@Controller
public class GameController {

	@Autowired
	GameService gameService;
	
	@RequestMapping(value="/game")
	public String game(Model model) throws Exception {
		
		List<BoardVO> list = gameService.selectGame();
		
		model.addAttribute("list", list);
		
		return "game/game";
	}
}
