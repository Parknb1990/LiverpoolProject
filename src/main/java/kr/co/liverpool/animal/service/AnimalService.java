package kr.co.liverpool.animal.service;

import java.util.List;

import kr.co.liverpool.common.vo.BoardVO;

public interface AnimalService {

	public List<BoardVO> selectAnimal() throws Exception;
}
