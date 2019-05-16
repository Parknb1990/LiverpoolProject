package kr.co.liverpool.register.service;

import kr.co.liverpool.common.vo.UserVO;

public interface RegisterService {
	
	//회원가입
	public void insertUserOne(UserVO userVO) throws Exception;

	//이메일체크
	public UserVO EmailCheck(UserVO userVO) throws Exception;
	
	//닉네임 체크
	public UserVO NickNameCheck(UserVO userVO) throws Exception;
}
