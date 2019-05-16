package kr.co.liverpool.common.vo;

import java.sql.Date;

public class ReplyVO {
	                                           
	private Integer rId;	                //�Ϸù�ȣ
	private Integer bId;       			//�Խù� ��ȣ
	private String content;            //��� ����
	private String regId;               //�ۼ���
	private Date regDt;                //�ۼ���
	private Date editDt;               //������
	
	public Integer getrId() {
		return rId;
	}
	public void setrId(Integer rId) {
		this.rId = rId;
	}
	public Integer getbId() {
		return bId;
	}
	public void setbId(Integer bId) {
		this.bId = bId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public Date getRegDt() {
		return regDt;
	}
	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}
	public Date getEditDt() {
		return editDt;
	}
	public void setEditDt(Date editDt) {
		this.editDt = editDt;
	}
	public ReplyVO(Integer rId, Integer bId, String content, String regId, Date regDt, Date editDt) {
		super();
		this.rId = rId;
		this.bId = bId;
		this.content = content;
		this.regId = regId;
		this.regDt = regDt;
		this.editDt = editDt;
	}
	public ReplyVO() {
		super();
	}
	
	@Override
	public String toString() {
		return "ReplyVO [rId=" + rId + ", bId=" + bId + ", content=" + content + ", regId=" + regId
				+ ", regDt=" + regDt + ", editDt=" + editDt + "]";
	}

}
