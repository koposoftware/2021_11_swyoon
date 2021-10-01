package kr.ac.kopo.myPage.vo;

public class HistoryVO {

    private String clientId;
    private String csltTime;
    private int pbCodeNum;
    private String csltTitle;
    private String csltComment;
    private int roomNumber;
    private String pbName;
    private String username;
    private String branchName;
    private int statusToggle;

    public int getStatusToggle() {
        return statusToggle;
    }

    public void setStatusToggle(int statusToggle) {
        this.statusToggle = statusToggle;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getCsltTime() {
        return csltTime;
    }

    public void setCsltTime(String csltTime) {
        this.csltTime = csltTime;
    }

    public int getPbCodeNum() {
        return pbCodeNum;
    }

    public void setPbCodeNum(int pbCodeNum) {
        this.pbCodeNum = pbCodeNum;
    }

    public String getCsltTitle() {
        return csltTitle;
    }

    public void setCsltTitle(String csltTitle) {
        this.csltTitle = csltTitle;
    }

    public String getCsltComment() {
        return csltComment;
    }

    public void setCsltComment(String csltComment) {
        this.csltComment = csltComment;
    }

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }


    @Override
    public String toString() {
        return "HistoryVO{" +
                "clientId='" + clientId + '\'' +
                ", csltTime='" + csltTime + '\'' +
                ", pbCodeNum=" + pbCodeNum +
                ", csltTitle='" + csltTitle + '\'' +
                ", csltComment='" + csltComment + '\'' +
                ", roomNumber=" + roomNumber +
                ", pbName='" + pbName + '\'' +
                ", username='" + username + '\'' +
                ", branchName='" + branchName + '\'' +
                ", statusToggle=" + statusToggle +
                '}';
    }
}



