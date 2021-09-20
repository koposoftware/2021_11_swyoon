package kr.ac.kopo.member.vo;

/**
 * @author HP
 *
 */
public class ClientVO {
	
	private String userId;
	private String password;
	private String username;
	private String nickname;
	private String birth;
	private String phone;
	private String email;
	private String address;
	private String regDate;
	private String branchName; // 등록한 지점이름

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "ClientVO [userId=" + userId + ", password=" + password + ", username=" + username + ", nickname="
				+ nickname + ", birth=" + birth + ", phone=" + phone + ", email=" + email + ", address=" + address
				+ ", regDate=" + regDate + ", branchName=" + branchName + "]";
	}

	
	
}
