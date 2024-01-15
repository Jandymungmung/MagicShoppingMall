package com.magic.www.biz.board.impl;

import java.util.List;

import com.magic.www.biz.board.BoardVO;

public interface BoardService {
	void insertBoard(BoardVO vo);
	
	void deleteBoard(BoardVO vo);
	
	void updateBoard(BoardVO vo);
	
	BoardVO getBoard(BoardVO vo);
	
	List<BoardVO> getBoardList(BoardVO vo);
}
