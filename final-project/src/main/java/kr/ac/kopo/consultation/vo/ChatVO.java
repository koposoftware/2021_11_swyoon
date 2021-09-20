package kr.ac.kopo.consultation.vo;

public class ChatVO {

	private String clerkName; // 지점직원 이름
	private String userName; // 사용자 이름
	private String content; // 대화 내용

	private String chatDate; // 대화 날짜
	public String getClerkName() {
		return clerkName;
	}
	public void setClerkName(String clerkName) {
		this.clerkName = clerkName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getChatDate() {
		return chatDate;
	}
	public void setChatDate(String chatDate) {
		this.chatDate = chatDate;
	}

	@Override
	public String toString() {
		return "ChatVO [clerkName=" + clerkName + ", userName=" + userName + ", content=" + content + ", chatDate="
				+ chatDate + "]";
	}

	

	
}
