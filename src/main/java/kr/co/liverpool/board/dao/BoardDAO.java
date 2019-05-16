package kr.co.liverpool.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.common.vo.ReplyVO;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;
	
	//�Խñ� ��� ����
	public List<BoardVO> selectBoard() {
		return sqlSession.selectList("board.selectBoard");
	}
	
	//�Խñ� �󼼺���
	public BoardVO read(int boardNum) {
		return sqlSession.selectOne("board.view", boardNum);
	}
	
	//�Խñ� ����
	public void delete(int boardNum) {
		sqlSession.delete("board.delete", boardNum);
	}
	
	//��ȸ�� ����
	public void increaseViewcnt(int boardNum) {
		sqlSession.update("board.increaseViewcnt", boardNum);
	}

	//�Խ��� ��� ����Ʈ
	public List<ReplyVO> selectReplyList(BoardVO boardVO) {
		return sqlSession.selectList("board.selectReplyList", boardVO);
	}
	
	
}
