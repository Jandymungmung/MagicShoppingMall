package com.magic.www.biz.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.magic.www.biz.board.BoardVO;

@Repository
public class BoardDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBoard(BoardVO vo) {
		System.out.println("--> Mybatis로 insertBoard() 처리");
		mybatis.insert("BoardDAO.insertBoard", vo);
	}
	public void deleteBoard(BoardVO vo) {
		System.out.println("--> Mybatis로 deleteBoard() 처리");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}
	public void updateBoard(BoardVO vo) {
		System.out.println("--> Mybatis로 updateBoard() 처리");
		mybatis.update("BoardDAO.updateBoard", vo);
	}
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("--> Mybatis로 getBoard() 처리");
		mybatis.update("BoardDAO.updateViewCnt", vo);
		return mybatis.selectOne("BoardDAO.getBoard", vo);
	}
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("--> Mybatis로 getListBoard() 처리");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
}
