package kr.ac.kopo.myPage.vo;

public class FavoriteVO {

    private int pbCodeNum;
    private String username;
    private String toggle;


    public int getPbCodeNum() {
        return pbCodeNum;
    }

    public void setPbCodeNum(int pbCodeNum) {
        this.pbCodeNum = pbCodeNum;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getToggle() {
        return toggle;
    }

    public void setToggle(String toggle) {
        this.toggle = toggle;
    }


    @Override
    public String toString() {
        return "FavoriteVO{" +
                "pbCodeNum=" + pbCodeNum +
                ", username='" + username + '\'' +
                ", toggle='" + toggle + '\'' +
                '}';
    }
}
