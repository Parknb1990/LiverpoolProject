package kr.co.liverpool.login.service;

import kr.co.liverpool.common.vo.UserVO;

public interface LoginService {

	public UserVO selectUserOne(UserVO userVO) throws Exception;
	

}
