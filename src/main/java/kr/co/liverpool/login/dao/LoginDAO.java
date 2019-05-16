package kr.co.liverpool.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.UserVO;

@Repository
//데이터베이스 로직 수행
public class LoginDAO {

	@Autowired
	SqlSession sqlSession;
	
	//회원정보를 serviceImpl로 리턴
	public UserVO selectUserOne(UserVO userVO) {
		
		return sqlSession.selectOne("login.selectUserOne", userVO);
	}
	
}
