package kr.co.liverpool.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.liverpool.board.service.BoardService;
import kr.co.liverpool.common.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	/*
	 * @Autowired ReplyService replyService;
	 */
	
	//��ü �� ��� ����
	@RequestMapping(value="/board", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		
		List<BoardVO> list = boardService.selectBoard();	
		model.addAttribute("list", list);

		return "board/board";
	}

	//�Խñ� �󼼳���
	@RequestMapping(value="/boardview")
	public ModelAndView boardview(@RequestParam int boardNum, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		//�Խñ� ��ȸ�� ����
		boardService.increaseViewcnt(boardNum, session);
		
		mav.setViewName("boardview/boardview");
		
		//�Խñ� �󼼺���
		mav.addObject("dto", boardService.read(boardNum));
		
		return mav;
	}
	
	//�Խñ� ����
	@RequestMapping("/delete")
	public String delete(@RequestParam int boardNum) throws Exception {
		boardService.delete(boardNum);
		return "redirect:board";
	}

}
