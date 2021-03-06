package kr.co.liverpool.away.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.SchduleVO;

@Repository
public class AwayDAO {

	@Autowired
	SqlSession sqlSession;


	public List<SchduleVO> away() {
		
		return sqlSession.selectList("schdule.away");
	}

}
