package com.gpmatching.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ReportBoardDto {
	int boardInfoNo;
	
	private int commonNo;//공통게시판 글번호 자동 증가ㅊㅇ .
	private String commonTitle;//공통게시판 제목
	private int userNo;//공통게시판 글쓴이 정보
	private String commonContent;
	private Date regDate;
	private int readCount;
	private String nickname;//닉네임 표시
	private String category;
	
	private List<BoardAttachDto> boardAttachList;
	
	private List<BoardCommentDto> boardCommentList;
	

}
