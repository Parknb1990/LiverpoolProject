package kr.co.liverpool.register.service;

import kr.co.liverpool.common.vo.UserVO;

public interface RegisterService {
	
	//ȸ������
	public void insertUserOne(UserVO userVO) throws Exception;

	//�̸���üũ
	public UserVO EmailCheck(UserVO userVO) throws Exception;
	
	//�г��� üũ
	public UserVO NickNameCheck(UserVO userVO) throws Exception;
}
