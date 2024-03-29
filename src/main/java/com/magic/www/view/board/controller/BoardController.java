package com.magic.www.view.board.controller;

import java.io.File;
import java.io.IOException;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.magic.www.biz.board.BoardVO;
import com.magic.www.biz.board.impl.BoardService;
import com.magic.www.biz.members.MembersVO;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo) throws IOException {
		System.out.println("글 등록 처리");
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) {
			long timeStamp = System.currentTimeMillis();
			String fileName = timeStamp + "_" + uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File("C:/JavaStudy/spring2/A_MainProject_MagicShoppingMall/src/main/webapp/img/board_img/" + fileName));
			vo.setFile(fileName);
		}
		boardService.insertBoard(vo);
		return "getBoardList.do";
	}
	
	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo) {
		System.out.println("글 수정 처리");
		
		boardService.updateBoard(vo);
		return "getBoardList.do";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		System.out.println("글 삭제 처리");
		
		boardService.deleteBoard(vo);
		return "getBoardList.do";
	}
	
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, Model model) {
		System.out.println("글 상세 조회 처리");
		
		model.addAttribute("board", boardService.getBoard(vo));	
		return "getBoard.jsp";
	}	
	
	@RequestMapping("/getBoardList.do")
	public ModelAndView getBoardList(BoardVO vo, ModelAndView mav) {
		System.out.println("글 목록 검색 처리");
		mav.addObject("pageNum",boardService.getBoardTotalPage(vo));
		vo.setOffset((vo.getPageNum()-1)*10);
		if(vo.getSearchCondition() == null) vo.setSearchCondition("title");
		if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
		mav.addObject("boardList", boardService.getBoardList(vo));
		mav.setViewName("getBoardList.jsp");
    	return mav;
	}
	
	@RequestMapping("/getBoardListMyPage.do")
	public String getBoardListMyPage(BoardVO vo, Model model, HttpSession session) {
		System.out.println("마이 페이지 글 목록 검색 처리");
		if(vo.getSearchCondition() == null) vo.setSearchCondition("title");
		if(vo.getSearchKeyword() == null) vo.setSearchKeyword("");
		vo.setWriter(((MembersVO)session.getAttribute("loginOk")).getUserId());
		model.addAttribute("boardList", boardService.getBoardListMyPage(vo));
    	return "getBoardListMyPage.jsp";
	}
}
