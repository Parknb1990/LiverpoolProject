package kr.co.liverpool.animal.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class AnimalDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectAnimal() {
		return sqlSession.selectList("board.selectAnimal");
	}
}
