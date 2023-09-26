
/**
* @brief 클래스 설명 : 오버워치 게시판 정보 (Lol 테이블) 
* 					controller 클래스 (view 없는 테스트 클래스)
* @author 최종 수정자 : hi.lee
* @version 1.0, 작업 내용 : 글쓰기 (write)
* @Date : 2023-09-26
* 
*/


package com.gpmatching.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gpmatching.dto.LolDto;
import com.gpmatching.service.LolService;

import lombok.Setter;

@Controller
@RequestMapping(path = { "/lol"})
public class LolController {
	
	@Autowired
	@Setter
	LolService lolService;
	
	@GetMapping(path = { "/write"})
	public String writeLol() {
		LolDto lolDto = new LolDto();
		
		System.out.println("test");
//		LolDto lol = new LolDto();
//		lol.setBoardNo(boardNo);
//		lol.setLolPlay("lolPlay");
//		lol.setLolPosition("lolPosition");
//		lol.setLolSur("lolSur");
//		lol.setLolTier("lolTier");
//		
		
		//lolDto.setBoardNo(2); // BoardNo 중복값 2번 입력하면 에러
		lolDto.setLolPlay("lolPlay");
		lolDto.setLolPosition("lolPosition");
		lolDto.setLolSur("lolSur");
		lolDto.setLolTier("lolTier");
		//lolService.write(lolDto, 3);
		//lolService.write(lolDto, 40); //boardMaching table에 없는 BoardNo 값 입력 에러
		lolService.write(lolDto, 30);
		
		
		return "home";
	}

}
