package kr.co.liverpool.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.liverpool.common.vo.UserVO;

@Repository
//�����ͺ��̽� ���� ����
public class LoginDAO {

	@Autowired
	SqlSession sqlSession;
	
	//ȸ�������� serviceImpl�� ����
	public UserVO selectUserOne(UserVO userVO) {
		
		return sqlSession.selectOne("login.selectUserOne", userVO);
	}
	
}
