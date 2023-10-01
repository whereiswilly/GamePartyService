package com.gpmatching.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.gpmatching.dto.BoardCommentDto;
import com.gpmatching.mapper.BoardCommentMapper;

import lombok.Setter;

public class BoardCommentServiceImpl implements BoardCommentService {
	
	@Setter(onMethod_ = { @Autowired })
	private BoardCommentMapper boardCommentMapper;
	
	@Override   
 	public void writeComment(BoardCommentDto boardComment) {
		boardCommentMapper.insertComment(boardComment);	
		//boardCommentMapper.updateGroupNo(boardComment.getCommentNo(), boardComment.getCommentNo());
		}  //댓글쓰기
	
	@Override
	public void deleteComment(int commentNo) {
		boardCommentMapper.deleteComment(commentNo);
	} //댓글 삭제

	//댓글수정
	@Override
	public void editComment(BoardCommentDto boardComment) {

		boardCommentMapper.updateComment(boardComment);
	}

}