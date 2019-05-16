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
	
	//게시글 목록 보기
	public List<BoardVO> selectBoard() {
		return sqlSession.selectList("board.selectBoard");
	}
	
	//게시글 상세보기
	public BoardVO read(int boardNum) {
		return sqlSession.selectOne("board.view", boardNum);
	}
	
	//게시글 삭제
	public void delete(int boardNum) {
		sqlSession.delete("board.delete", boardNum);
	}
	
	//조회수 증가
	public void increaseViewcnt(int boardNum) {
		sqlSession.update("board.increaseViewcnt", boardNum);
	}

	//게시판 댓글 리스트
	public List<ReplyVO> selectReplyList(BoardVO boardVO) {
		return sqlSession.selectList("board.selectReplyList", boardVO);
	}
	
	
}
