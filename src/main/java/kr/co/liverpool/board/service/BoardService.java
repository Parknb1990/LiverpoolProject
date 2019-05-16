package kr.co.liverpool.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.co.liverpool.common.vo.BoardVO;

public interface BoardService {

	//�Խñ� ��ü��� ����
	public List<BoardVO> selectBoard() throws Exception;
	
	//�Խñ� �󼼺���
	public BoardVO read(int boardNum) throws Exception;
	
	//�Խñ� ����
	public void delete(int boardNum) throws Exception;
	
	//�Խñ� ��ȸ
	public void increaseViewcnt(int boardNum, HttpSession session) throws Exception;
	


}
