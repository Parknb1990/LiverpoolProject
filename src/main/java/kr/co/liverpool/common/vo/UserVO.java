package kr.co.liverpool.common.vo;

public class UserVO {

	private String userEmail;			//����� �̸���
	private String userPassword;	//�н�����
	private String userNickName;	//�г���
	private String userName;			//����� �̸�
	private String postCode;			//�� �����ȣ
	private String userAddr1;			//�� �ּ�
	private String referAddr;			//�����ּ�
	private String userAddr2;			//���ּ�
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getUserAddr1() {
		return userAddr1;
	}
	public void setUserAddr1(String userAddr1) {
		this.userAddr1 = userAddr1;
	}
	public String getReferAddr() {
		return referAddr;
	}
	public void setReferAddr(String referAddr) {
		this.referAddr = referAddr;
	}
	public String getUserAddr2() {
		return userAddr2;
	}
	public void setUserAddr2(String userAddr2) {
		this.userAddr2 = userAddr2;
	}
	@Override
	public String toString() {
		return "UserVO [userEmail=" + userEmail + ", userPassword=" + userPassword + ", userNickName=" + userNickName
				+ ", userName=" + userName + ", postCode=" + postCode + ", userAddr1=" + userAddr1 + ", referAddr="
				+ referAddr + ", userAddr2=" + userAddr2 + "]";
	}
	public UserVO(String userEmail, String userPassword, String userNickName, String userName, String postCode,
			String userAddr1, String referAddr, String userAddr2) {
		super();
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userNickName = userNickName;
		this.userName = userName;
		this.postCode = postCode;
		this.userAddr1 = userAddr1;
		this.referAddr = referAddr;
		this.userAddr2 = userAddr2;
	}
	public UserVO() {
		super();
	}
	
	
}
	
