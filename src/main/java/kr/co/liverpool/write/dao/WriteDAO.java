package kr.co.liverpool.write.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class WriteDAO {

	@Autowired
	SqlSession sqlSession;
	
	//게시글 저장
	public void insertBoard(BoardVO boardVO) {
		sqlSession.insert("board.insertBoard", boardVO);
		
	}
}
