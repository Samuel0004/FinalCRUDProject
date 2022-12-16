package com.example.spring2.game;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.datetime.DateFormatter;

import java.text.SimpleDateFormat;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GameVO {
    private int seq;
    private String Category;
    private String GameName;
    private String Content;
    private int Rating;
    private Date RegDate;
    private int RecruitNum;
    private String GamePublisher;
    private String RecruitEmail;

    public String getPrettyDate(){
        return new SimpleDateFormat("yyyy.MM.dd. HH:mm").format(RegDate);
    }
}
