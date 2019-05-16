package kr.co.liverpool.freeboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class FreeDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectFree() {
		return sqlSession.selectList("board.selectFree");
	}
}
