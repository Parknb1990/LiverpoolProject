package kr.co.liverpool.freeboard.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.freeboard.dao.FreeDAO;
import kr.co.liverpool.freeboard.service.FreeService;

@Service
public class FreeServiceImpl implements FreeService {

	@Autowired
	FreeDAO freeDAO;
	
	@Override
	public List<BoardVO> selectFree() {
		
		return freeDAO.selectFree();
	}

}
