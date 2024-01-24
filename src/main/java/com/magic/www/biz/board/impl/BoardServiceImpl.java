package com.magic.www.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.magic.www.biz.board.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAOMybatis boardDAO;

	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}

	@Override
	public List<BoardVO> getBoardListMyPage(BoardVO vo) {
		System.out.println(vo.getWriter());
		return boardDAO.getBoardListMyPage(vo);
	}

	@Override
	public BoardVO getBoardTotalPage(BoardVO vo) {
		vo.setTotalPage((int)Math.ceil(boardDAO.countPost(vo)/10.0));
		return vo;
	}

}
