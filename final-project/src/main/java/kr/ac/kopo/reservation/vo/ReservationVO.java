package kr.ac.kopo.reservation.vo;

public class ReservationVO {

    private String rsrvTime;
    private String rsrvComment;
    private String username;
    private String pbName;
    private String pbBranchName;
    private String startDate;

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getRsrvTime() {
        return rsrvTime;
    }

    public void setRsrvTime(String rsrvTime) {
        this.rsrvTime = rsrvTime;
    }

    public String getRsrvComment() {
        return rsrvComment;
    }

    public void setRsrvComment(String rsrvComment) {
        this.rsrvComment = rsrvComment;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPbName() {
        return pbName;
    }

    public void setPbName(String pbName) {
        this.pbName = pbName;
    }

    public String getPbBranchName() {
        return pbBranchName;
    }

    public void setPbBranchName(String pbBranchName) {
        this.pbBranchName = pbBranchName;
    }


    @Override
    public String toString() {
        return "ReservationVO{" +
                "rsrvTime='" + rsrvTime + '\'' +
                ", rsrvComment='" + rsrvComment + '\'' +
                ", username='" + username + '\'' +
                ", pbName='" + pbName + '\'' +
                ", pbBranchName='" + pbBranchName + '\'' +
                ", startDate='" + startDate + '\'' +
                '}';
    }
}
