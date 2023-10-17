package com.gpmatching.matchingboard.lolboard.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.gpmatching.dto.MatchingCommentDto;
import com.gpmatching.mapper.MatchingCommentMapper;
import com.gpmatching.matchingboard.dto.MatchingBoardDto;
import com.gpmatching.matchingboard.lolboard.mapper.LolBoardMapper;

import lombok.Setter;

public class LolBoardServiceImpl implements LolBoardService {

	@Setter(onMethod_ = { @Autowired }) 
	LolBoardMapper mapper;
	
	@Setter(onMethod_ = { @Autowired }) 
	MatchingCommentMapper matchingCommentMapper;
	
	public void write(MatchingBoardDto matchingBoardDto) {
		mapper.insertMatchingBoard(matchingBoardDto);
		
		
	}
	
	@Override
	public void edit(MatchingBoardDto matchingBoardDto) {

		mapper.updateMatchingBoard(matchingBoardDto);
		
	}
	
	@Override
	public int getLastMatchingItemBoardNo() {
		int boardNo = mapper.selectMatchingItemBoardNo();
		
		return boardNo;
	}
	
	@Override
	public List<MatchingBoardDto> getMatchingBoardListByGameName(String gameName) {
		
		List<MatchingBoardDto> boardMatchingList  = mapper.selectMatchingBoardListByGameName(gameName);
		
		return boardMatchingList;
	}
	
	
	
	
	@Override
	public List<MatchingBoardDto> getSelectLolBoardListByGameName(String gameName) {
		List<MatchingBoardDto> list = mapper.selectLolBoardListByGameName(gameName);

		return list;
	}
	
	@Override
	public MatchingBoardDto findMatchingBoardByBoardNo(int boardNo) {
		
		MatchingBoardDto lolBoard = mapper.selectMatchingBoardByBoardNo(boardNo);
		
		
		
		return lolBoard;
	}
	
	
	@Override
	public MatchingBoardDto findLolBoardByBoardNo(int boardNo) {
		
		MatchingBoardDto lolBoard = mapper.selectLolBoardByBoardNo(boardNo);
		
		
		return lolBoard;
	}

	public void setNowConfirmCount(int boardNo) {
		int confirmCount = matchingCommentMapper.commentConfirmCountByMatchingBoardNo(boardNo);
		mapper.updateConfirmCount(confirmCount, boardNo);
	}

	@Override
	public void delete(int boardNo) {
		mapper.deleteLolBoard(boardNo);
		
	}

	@Override
	public boolean getMatchingCloseByBoardNo(int boardNo) {
		boolean matchingClose = mapper.selectMatchingCloseByBoardNo(boardNo);
		return matchingClose;
	}
	
	@Override
	public List<MatchingBoardDto> getMatchingBoardListByLolTier(String gameName, String lolTier) {
		
		List<MatchingBoardDto> list = mapper.selectLolBoardListByLolTier(gameName, lolTier);
		
		return list;
	}


	@Override
	public List<MatchingBoardDto> searchMatchingBoardListByTitle(String gameName, String keyword) {

		List<MatchingBoardDto> list = mapper.selectLolBoardListByTitle(gameName, keyword);
				
		return list;
	}


}