package kr.ac.kopo.reservation.vo;

public class ReservationVO {

    private String rsrvTime;
    private String rsrvComent;
    private String username;
    private String pbName;
    private String pbBranchName;

    public String getPbBranchName() {
        return pbBranchName;
    }

    public void setPbBranchName(String pbBranchName) {
        this.pbBranchName = pbBranchName;
    }

    public String getRsrvTime() {
        return rsrvTime;
    }

    public void setRsrvTime(String rsrvTime) {
        this.rsrvTime = rsrvTime;
    }

    public String getRsrvComent() {
        return rsrvComent;
    }

    public void setRsrvComent(String rsrvComent) {
        this.rsrvComent = rsrvComent;
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

    @Override
    public String toString() {
        return "ReservationVO{" +
                "rsrvTime='" + rsrvTime + '\'' +
                ", rsrvComent='" + rsrvComent + '\'' +
                ", username='" + username + '\'' +
                ", pbName='" + pbName + '\'' +
                ", pbBranchName='" + pbBranchName + '\'' +
                '}';
    }
}
