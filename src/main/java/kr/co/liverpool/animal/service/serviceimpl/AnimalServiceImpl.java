package kr.co.liverpool.animal.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.animal.dao.AnimalDAO;
import kr.co.liverpool.animal.service.AnimalService;
import kr.co.liverpool.common.vo.BoardVO;

@Service
public class AnimalServiceImpl implements AnimalService {

	@Autowired
	AnimalDAO animalDAO;
	
	@Override
	public List<BoardVO> selectAnimal() {
		return animalDAO.selectAnimal();
	}

}
