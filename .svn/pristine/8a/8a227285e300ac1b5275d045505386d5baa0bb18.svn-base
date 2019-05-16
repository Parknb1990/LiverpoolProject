package kr.co.liverpool.game.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class GameDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectGame() {
		return sqlSession.selectList("board.selectGame");
	}
}
