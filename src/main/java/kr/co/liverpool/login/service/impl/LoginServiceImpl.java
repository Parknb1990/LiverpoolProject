package kr.co.liverpool.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.UserVO;
import kr.co.liverpool.login.dao.LoginDAO;
import kr.co.liverpool.login.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;

	/*
	 * @Override public UserVO UserLogin(UserVO userVO) { return
	 * loginDAO.UserLogin(userVO); }
	 */
	
	//ȸ�������� controller�� ����
	@Override
	public UserVO selectUserOne(UserVO userVO) {
		return loginDAO.selectUserOne(userVO);
	}

	
	
	

}
