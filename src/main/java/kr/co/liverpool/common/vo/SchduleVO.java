package kr.co.liverpool.common.vo;

public class SchduleVO {

	private String teamName;           //팀이름
	private String homeDate;           //홈경기 날짜
	private String awayDate;           //어웨이경기 날짜
	private String teamImg;            //팀 로고
	private String homeYear;           //연도별 홈경기
	private String homeMonth;          //월 홈경기
	private String awayYear;           //연도별 어웨이
	private String awayMonth;          //월 어웨이
	
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getHomeDate() {
		return homeDate;
	}
	public void setHomeDate(String homeDate) {
		this.homeDate = homeDate;
	}
	public String getAwayDate() {
		return awayDate;
	}
	public void setAwayDate(String awayDate) {
		this.awayDate = awayDate;
	}
	public String getTeamImg() {
		return teamImg;
	}
	public void setTeamImg(String teamImg) {
		this.teamImg = teamImg;
	}
	public String getHomeYear() {
		return homeYear;
	}
	public void setHomeYear(String homeYear) {
		this.homeYear = homeYear;
	}
	public String getHomeMonth() {
		return homeMonth;
	}
	public void setHomeMonth(String homeMonth) {
		this.homeMonth = homeMonth;
	}
	public String getAwayYear() {
		return awayYear;
	}
	public void setAwayYear(String awayYear) {
		this.awayYear = awayYear;
	}
	public String getAwayMonth() {
		return awayMonth;
	}
	public void setAwayMonth(String awayMonth) {
		this.awayMonth = awayMonth;
	}
	public SchduleVO(String teamName, String homeDate, String awayDate, String teamImg, String homeYear,
			String homeMonth, String awayYear, String awayMonth) {
		super();
		this.teamName = teamName;
		this.homeDate = homeDate;
		this.awayDate = awayDate;
		this.teamImg = teamImg;
		this.homeYear = homeYear;
		this.homeMonth = homeMonth;
		this.awayYear = awayYear;
		this.awayMonth = awayMonth;
	}
	@Override
	public String toString() {
		return "SchduleVO [teamName=" + teamName + ", homeDate=" + homeDate + ", awayDate=" + awayDate + ", teamImg="
				+ teamImg + ", homeYear=" + homeYear + ", homeMonth=" + homeMonth + ", awayYear=" + awayYear
				+ ", awayMonth=" + awayMonth + "]";
	}
	
	public SchduleVO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
}
