package kr.co.liverpool.register.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.UserVO;
import kr.co.liverpool.register.dao.RegisterDAO;
import kr.co.liverpool.register.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	private RegisterDAO registerDAO;
	
	//회원정보 insert
	@Override
	public void insertUserOne(UserVO userVO) {
		registerDAO.insertUserOne(userVO);
	}

	//회원정보를 controller에 리턴
	@Override
	public UserVO EmailCheck(UserVO userVO) {
		return registerDAO.EmailCheck(userVO);	
	}

	//회원정보를 controller에 리턴
	@Override
	public UserVO NickNameCheck(UserVO userVO) {
		
		return registerDAO.NickNameCheck(userVO);
	}

}
