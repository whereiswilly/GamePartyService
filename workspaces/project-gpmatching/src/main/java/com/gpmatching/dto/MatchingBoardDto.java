package com.gpmatching.dto;

import java.util.Date;

import lombok.Data;

@Data
public class MatchingBoardDto {
	int boardNo;
	String boardTitle;
	String boardContent;
	boolean preferGender;
	boolean mic;
	boolean matchingClose;
	Date regDate;
	int readCount;
	boolean deleted;
	int userNo;
	int gameNo;

}