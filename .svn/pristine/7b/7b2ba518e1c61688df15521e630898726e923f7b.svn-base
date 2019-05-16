package kr.co.liverpool.foot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.BoardVO;

@Repository
public class FootDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BoardVO> selectFoot() {
		return sqlSession.selectList("board.selectFoot");
				
	}
}
