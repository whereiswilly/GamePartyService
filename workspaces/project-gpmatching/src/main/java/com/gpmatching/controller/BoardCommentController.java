package com.gpmatching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gpmatching.dto.BoardCommentDto;
import com.gpmatching.service.BoardCommentService;

import lombok.Setter;

@Controller
@RequestMapping(path = { "/commonBoard" })
public class BoardCommentController {
	
	@Setter(onMethod_ = { @Autowired })
	private BoardCommentService boardCommentService;
	
	//공통게시판 댓글 쓰기
	@PostMapping(path= {"/writeComment"})
	public String writeComment(BoardCommentDto boardComment, @RequestParam(defaultValue = "-1") int pageNo) {
	
		boardCommentService.writeComment(boardComment);

		//return "redirect:commonDetail";
		return String.format("redirect:commonDetail?commonNo=%d&pageNo=%d", boardComment.getCommonNo(), pageNo);
	}
	
	
	
	
//	public String deleteComment() {  
//		return null;
//	}  댓글삭제, 수정 구현 안 됨
	
	
////testCode
//	@GetMapping(path= {"/test"})
//	public String writeCommentForm(BoardCommentDto boardComment) {
//		
//		return "test2";
//	}
//	
//	@PostMapping(path= {"/test"})
//	public String writeComment(BoardCommentDto boardComment) {
//		
//		boardCommentService.writeComment(boardComment);
//	
//		System.out.println(boardComment);//testCode
//
//		BoardCommentDto test = new BoardCommentDto();
//		
//		  test.setCommentNo(11);
//		  test.setCommonNo(11);
//		  test.setUserNo(11);
//		  test.setCommentContent("content1");
////		  test.setGroupNo(1);
////		  test.setStep(1);
////		  test.setDepth(0);
////		  test.setDeleted(false);
//		  
//		  boardCommentService.writeComment(test);
//		
//		return "redirect:/test";
//	}

}