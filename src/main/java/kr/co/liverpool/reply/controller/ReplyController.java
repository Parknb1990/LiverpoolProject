package kr.co.liverpool.reply.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.liverpool.board.service.BoardService;
import kr.co.liverpool.common.vo.ReplyVO;
import kr.co.liverpool.reply.service.ReplyService;


@Controller
public class ReplyController {
	
	@Autowired
	private BoardService boardService;

	@Autowired
	private ReplyService replyService;

	@RequestMapping(value="/replyboard", method=RequestMethod.POST)
	public ModelAndView viewreply(ReplyVO replyVO, ModelAndView mav) throws Exception {
		
		//댓글 데이터베이스에 저장
		replyService.saveReply(replyVO);

		mav.setViewName("boardview/boardview");
		
		//게시글 상세보기
		mav.addObject("dto", boardService.read(replyVO.getbId()));
		
		
		return mav;
	}
	
	@RequestMapping("/deleteReply")
	public String delete(@RequestParam int rId, int boardNum, ModelAndView mav, ReplyVO replyVO) throws Exception {
		
		replyService.deleteReply(rId);

		return "redirect:/boardview?boardNum="+boardNum;
	}
}

 