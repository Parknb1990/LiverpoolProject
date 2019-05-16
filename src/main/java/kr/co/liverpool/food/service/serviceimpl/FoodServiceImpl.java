package kr.co.liverpool.food.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.food.dao.FoodDAO;
import kr.co.liverpool.food.service.FoodService;

@Service
public class FoodServiceImpl implements FoodService {

	@Autowired 
	FoodDAO foodDAO;
	
	@Override
	public List<BoardVO> selectFood() {
		
		return foodDAO.selectFood();
	}

}
