package kr.co.liverpool.away.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.away.dao.AwayDAO;
import kr.co.liverpool.away.service.AwayService;
import kr.co.liverpool.common.vo.SchduleVO;

@Service
public class AwayServiceImpl implements AwayService {

	@Autowired
	private AwayDAO awayDAO;

	@Override
	public List<SchduleVO> away() {
		
		return awayDAO.away();
	}
	
	
	
	
}
