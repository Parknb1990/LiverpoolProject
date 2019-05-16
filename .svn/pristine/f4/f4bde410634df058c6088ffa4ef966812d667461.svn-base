package kr.co.liverpool.reply.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.ReplyVO;
import kr.co.liverpool.reply.dao.ReplyDAO;
import kr.co.liverpool.reply.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDAO replyDAO;
	
	@Override
	public List<ReplyVO> getReply(int bId) {
		return replyDAO.getReply(bId);
	}

	@Override
	//댓글 저장 controller에 리턴
	public int saveReply(ReplyVO replyVO) {
		
		return replyDAO.saveReply(replyVO);
	}

	@Override
	public int deleteReply(int rId) {
		
		return replyDAO.deleteReply(rId);
	}
}
