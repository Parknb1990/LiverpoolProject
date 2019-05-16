package kr.co.liverpool.common.vo;

import java.util.List;

public class BoardVO {

	private int boardNum;                           //게시글 번호
	private String boardTitle;                      //게시글 제목
	private String boardContent;                  //게시글 내용
	private String boardDate;                      //게시 날짜
	private String userEmail;                       //사용자 이메일
	private String userNickName;                  //사용자 닉네임
	private String boardCategory;                 //게시글 카테고리
	private String viewCnt;                         //조회수
	private List<ReplyVO> replyList;            //댓글
	                                               
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
