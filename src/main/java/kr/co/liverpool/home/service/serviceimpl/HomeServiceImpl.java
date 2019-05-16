package kr.co.liverpool.home.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.SchduleVO;
import kr.co.liverpool.home.dao.HomeDAO;
import kr.co.liverpool.home.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDAO homeDAO;

	@Override
	public List<SchduleVO> home() {
	
		return homeDAO.home();
	}
	
	@Override
	public List<SchduleVO> schduleCheck() {
		return homeDAO.schduleCheck();

	}
	

}
