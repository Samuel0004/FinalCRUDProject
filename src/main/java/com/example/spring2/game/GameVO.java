package com.example.spring2.game;


import java.util.Date;



public class GameVO {
    private int seq;
    private String category;

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getGamename() {
        return gamename;
    }

    public void setGamename(String gamename) {
        this.gamename = gamename;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public int getRecruitnum() {
        return recruitnum;
    }

    public void setRecruitnum(int recruitnum) {
        this.recruitnum = recruitnum;
    }

    public String getGamepublisher() {
        return gamepublisher;
    }

    public void setGamepublisher(String gamepublisher) {
        this.gamepublisher = gamepublisher;
    }

    public String getRecruitemail() {
        return recruitemail;
    }

    public void setRecruitemail(String recruitemail) {
        this.recruitemail = recruitemail;
    }

    private String gamename;
    private String content;
    private Date regdate;
    private int rating;
    private int recruitnum;
    private String gamepublisher;
    private String recruitemail;
}
