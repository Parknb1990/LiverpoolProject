package kr.co.liverpool.game.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.game.dao.GameDAO;
import kr.co.liverpool.game.service.GameService;

@Service
public class GameServiceImpl implements GameService {

	@Autowired
	GameDAO gameDAO;
	
	@Override
	public List<BoardVO> selectGame() {
		
		return gameDAO.selectGame();
	}

}
