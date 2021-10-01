package kr.ac.kopo.member.vo;

public class BankerVO {

    private String pbId;
    private String pbName;
    private String pbPassword;
    private String pbRank;
    private String pbPhone;
    private String pbEmail;
    private String branchName;
    private String mainField;
    private String introContent;
    private String mainContent;
    private String impossible;
    private String tagName;
    private int codeNum;
    private String fileSq;

    public String getFileSq() {
        return fileSq;
    }

    public void setFileSq(String fileSq) {
        this.fileSq = fileSq;
    }

    public int getCodeNum() {
        return codeNum;
    }

    public void setCodeNum(int codeNum) {
        this.codeNum = codeNum;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public String getImpossible() {
        return impossible;
    }

    public void setImpossible(String impossible) {
        this.impossible = impossible;
    }

    public String getIntroContent() {
        return introContent;
    }

    public void setIntroContent(String introContent) {
        this.introContent = introContent;
    }

    public String getMainContent() {
        return mainContent;
    }

    public void setMainContent(String mainContent) {
        this.mainContent = mainContent;
    }

    public String getMainField() {
        return mainField;
    }

    public void setMainField(String mainField) {
        this.mainField = mainField;
    }

    public String getPbId() {
        return pbId;
    }

    public void setPbId(String pbId) {
        this.pbId = pbId;
    }

    public String getPbPassword() {
        return pbPassword;
    }

    public void setPbPassword(String pbPassword) {
        this.pbPassword = pbPassword;
    }

    public String getPbName() {
        return pbName;
    }

    public void setPbName(String pbName) {
        this.pbName = pbName;
    }

    public String getPbRank() {
        return pbRank;
    }

    public void setPbRank(String pbRank) {
        this.pbRank = pbRank;
    }

    public String getPbPhone() {
        return pbPhone;
    }

    public void setPbPhone(String pbPhone) {
        this.pbPhone = pbPhone;
    }

    public String getPbEmail() {
        return pbEmail;
    }

    public void setPbEmail(String pbEmail) {
        this.pbEmail = pbEmail;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }


    @Override
    public String toString() {
        return "BankerVO{" +
                "pbId='" + pbId + '\'' +
                ", pbName='" + pbName + '\'' +
                ", pbPassword='" + pbPassword + '\'' +
                ", pbRank='" + pbRank + '\'' +
                ", pbPhone='" + pbPhone + '\'' +
                ", pbEmail='" + pbEmail + '\'' +
                ", branchName='" + branchName + '\'' +
                ", mainField='" + mainField + '\'' +
                ", introContent='" + introContent + '\'' +
                ", mainContent='" + mainContent + '\'' +
                ", impossible='" + impossible + '\'' +
                ", tagName='" + tagName + '\'' +
                ", codeNum=" + codeNum +
                ", fileSq='" + fileSq + '\'' +
                '}';
    }
}
