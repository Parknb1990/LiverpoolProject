package kr.co.liverpool.common.vo;

import java.util.List;

public class BoardVO {

	private int boardNum;                           //�Խñ� ��ȣ
	private String boardTitle;                      //�Խñ� ����
	private String boardContent;                  //�Խñ� ����
	private String boardDate;                      //�Խ� ��¥
	private String userEmail;                       //����� �̸���
	private String userNickName;                  //����� �г���
	private String boardCategory;                 //�Խñ� ī�װ�
	private String viewCnt;                         //��ȸ��
	private List<ReplyVO> replyList;            //���
	                                               
	public List<ReplyVO> getReplyList() {
		return replyList;
	}

	public void setReplyList(List<ReplyVO> replyList) {
		this.replyList = replyList;
	}

	public int getBoardNum() {
		return boardNum;
	}
	
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}
	public String getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(String viewCnt) {
		this.viewCnt = viewCnt;
	}
	
	@Override
	public String toString() {
		return "BoardVO [boardNum=" + boardNum + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardDate=" + boardDate + ", userEmail=" + userEmail + ", userNickName=" + userNickName
				+ ", boardCategory=" + boardCategory + ", viewCnt=" + viewCnt + "]";
	}
	public BoardVO(int boardNum, String boardTitle, String boardContent, String boardDate, String userEmail,
			String userNickName, String boardCategory, String viewCnt) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.userEmail = userEmail;
		this.userNickName = userNickName;
		this.boardCategory = boardCategory;
		this.viewCnt = viewCnt;
	}
	public BoardVO() {
		super();
	}

	
	
	
}
