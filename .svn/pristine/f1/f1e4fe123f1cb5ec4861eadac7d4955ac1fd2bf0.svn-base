package kr.co.liverpool.reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.ReplyVO;

@Repository
public class ReplyDAO {

	@Autowired
	SqlSession sqlSession;
	
		//´ñ±Û ¸®½ºÆ®
		public List<ReplyVO> getReply(int bId) {
			return sqlSession.selectList("reply.getReply", bId);
		}
		
		//´ñ±Û ÀÔ·Â
		public int saveReply(ReplyVO replyVO) {
			return sqlSession.insert("reply.saveReply", replyVO);
		}
		
		//´ñ±Û »èÁ¦
		public int deleteReply(int rId) {
			return sqlSession.delete("reply.deleteReply", rId);
		}
}
