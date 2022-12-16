package com.example.spring2.board;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private String category;

	private Date regdate;
	private String email;

	private String file;
	private int cnt;
}