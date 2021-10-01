package kr.ac.kopo.scheduler.vo;

public class SchedulerVO {

    private String title; // 스케줄 제목
    private String startDate;
    private String endDate; // 끝나는 시간
    private String pbName; // 담당 직원 이름
    private String pbBranchName; // 담당 직원 브랜치명
    private int impossible; // 상담 불가능한 시간
    private String memo;
    private String startTime;
    private String endTime;
    private int statusToggle;

    public int getStatusToggle() {
        return statusToggle;
    }

    public void setStatusToggle(int statusToggle) {
        this.statusToggle = statusToggle;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
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

    public int getImpossible() {
        return impossible;
    }

    public void setImpossible(int impossible) {
        this.impossible = impossible;
    }


    @Override
    public String toString() {
        return "SchedulerVO{" +
                "title='" + title + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", pbName='" + pbName + '\'' +
                ", pbBranchName='" + pbBranchName + '\'' +
                ", impossible=" + impossible +
                ", memo='" + memo + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                ", statusToggle=" + statusToggle +
                '}';
    }
}
