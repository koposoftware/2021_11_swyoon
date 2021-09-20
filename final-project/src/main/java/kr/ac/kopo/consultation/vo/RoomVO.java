package kr.ac.kopo.consultation.vo;

public class RoomVO {
	int roomNumber; // 방인원
	private String pbName;
	private String clientName;
	private String enterDate; // 입장한 시간
	private String endDate; // 상담 종료 시간
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getPbName() {
		return pbName;
	}
	public void setPbName(String pbName) {
		this.pbName = pbName;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getEnterDate() {
		return enterDate;
	}
	public void setEnterDate(String enterDate) {
		this.enterDate = enterDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	@Override
	public String toString() {
		return "RoomVO [roomNumber=" + roomNumber + ", pbName=" + pbName + ", clientName=" + clientName + ", enterDate="
				+ enterDate + ", endDate=" + endDate + "]";
	}
	
	
	
	
	
	
}