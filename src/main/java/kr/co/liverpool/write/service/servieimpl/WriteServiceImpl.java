package kr.co.liverpool.write.service.servieimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.liverpool.common.vo.BoardVO;
import kr.co.liverpool.write.dao.WriteDAO;
import kr.co.liverpool.write.service.WriteService;

@Service
public class WriteServiceImpl implements WriteService {

	@Autowired
	private WriteDAO writeDAO;
	
	@Override
	//게시글 작성
	public void insertBoard(BoardVO boardVO) {
		writeDAO.insertBoard(boardVO);
	}

}
