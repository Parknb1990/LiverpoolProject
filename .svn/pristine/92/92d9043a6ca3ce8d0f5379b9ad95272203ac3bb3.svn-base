package kr.co.liverpool.foot.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.foot.dao.FootDAO;
import kr.co.liverpool.foot.service.FootService;

@Service
public class FootServiceImpl implements FootService {

	@Autowired
	FootDAO footDAO;
	
	@Override
	public List<BoardVO> selectFoot() {
		
		return footDAO.selectFoot();
	}

	
}
