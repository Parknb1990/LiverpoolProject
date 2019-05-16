package kr.co.liverpool.humor.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class HumorDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectHumor() {
		return sqlSession.selectList("board.selectHumor");
	}
}
