package kr.co.liverpool.register.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.UserVO;

@Repository
public class RegisterDAO {
	
	@Autowired 
	SqlSession sqlSession;
	
	/*
	 * @Autowired private UserVO userVO;
	 */
	
	//회원정보 데이터베이스에 저장
	public void insertUserOne(UserVO userVO) {
		sqlSession.insert("register.insertUserOne", userVO);
	}

	//회원정보를 불러와 serviceimpl에 리턴
	public UserVO EmailCheck(UserVO userVO) {
		
		return sqlSession.selectOne("check.EmailCheck", userVO);
	}

	//회원정보를 불러와 serviceimpl에 리턴
	public UserVO NickNameCheck(UserVO userVO) {
		
		return sqlSession.selectOne("checknick.NickNameCheck", userVO);
	}

}
