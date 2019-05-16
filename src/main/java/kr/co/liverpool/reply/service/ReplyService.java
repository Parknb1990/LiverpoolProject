package kr.co.liverpool.reply.service;

import java.util.List;

import kr.co.liverpool.common.vo.ReplyVO;

public interface ReplyService {

	//��� ����Ʈ
	public List<ReplyVO> getReply(int bId) throws Exception;
	
	//��� ����
	public int saveReply(ReplyVO replyVO) throws Exception;
	
	//��� ����
	public int deleteReply(int rId) throws Exception;
}
