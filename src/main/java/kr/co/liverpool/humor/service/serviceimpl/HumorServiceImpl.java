package kr.co.liverpool.humor.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.humor.dao.HumorDAO;
import kr.co.liverpool.humor.service.HumorService;

@Service
public class HumorServiceImpl implements HumorService {
	
	@Autowired
	HumorDAO humorDAO;

	@Override
	public List<BoardVO> selectHumor() {
		
		return humorDAO.selectHumor();
		
	}

}
