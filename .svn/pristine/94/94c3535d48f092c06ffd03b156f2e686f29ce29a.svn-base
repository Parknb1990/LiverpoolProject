package kr.co.liverpool.food.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class FoodDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectFood() {
		return sqlSession.selectList("board.selectFood");
	}
}
