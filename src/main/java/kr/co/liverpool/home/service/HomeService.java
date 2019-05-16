package kr.co.liverpool.home.service;

import java.util.List;

import kr.co.liverpool.common.vo.SchduleVO;

public interface HomeService {

	public List<SchduleVO> home() throws Exception;

	List<SchduleVO> schduleCheck() throws Exception;
	
}
