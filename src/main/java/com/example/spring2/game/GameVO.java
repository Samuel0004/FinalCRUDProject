package com.example.spring2.game;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
    private Date TimeStamp;
    private int RecruitNum;
    private String GamePublisher;
    private String RecruitEmail;
}
