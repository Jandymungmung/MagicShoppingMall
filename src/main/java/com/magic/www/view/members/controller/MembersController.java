package com.magic.www.view.members.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.magic.www.biz.members.MembersVO;
import com.magic.www.biz.members.impl.MembersService;

@Controller
public class MembersController {
	@Autowired
	private MembersService membersService;

	// 회원 가입
	@RequestMapping("/insertMember.do")
	public String insertMember(MembersVO vo) {
		System.out.println("회원 가입 처리");
		membersService.insertMember(vo);
		return "home.do";
	}

//	// 회원 탈퇴
//	@RequestMapping("/deleteMember.do")
//	public String deleteMember(MembersVO vo) {
//		System.out.println("회원 탈퇴 처리");
//		membersService.deleteMember(vo);
//		return "withdrawal.jsp";
//	}
//	회원 수정
//	@RequestMapping("/updateMember.do")
//	public String updateMember(MembersVO vo) {
//		System.out.println("회원 정보 수정 처리");
//		membersService.updateMember(MembersVO vo);
//		return "myPage.jsp";
//	}

	//아이디 중복 검사
	@RequestMapping("/idCheck.do")
	public void userIdCheck(MembersVO vo, HttpServletResponse response) {
		PrintWriter out;
		try {
			out = response.getWriter();
			if (membersService.getId(vo) == null) {
				out.write("1");
			} else {
				out.write("0");
			}

		} catch (IOException e) {

			e.printStackTrace();
		}
	}
	
	@RequestMapping("/login.do")
	public String login(MembersVO vo, Model model, HttpSession session) {
		 System.out.println("로그인 처리");
		    MembersVO result = membersService.login(vo);
		    if(result != null && result.getUserName().equals("관리자")) {
		    	session.setAttribute("loginOk", result);
		        return "home.do";
		    } else if(result != null) {
		    	session.setAttribute("loginOk", result);
		        return "home.do";
		    } else {
		        model.addAttribute("message", "아이디 혹은 비밀번호가 일치하지 않습니다.");
		        return "login.jsp";
		    }
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home.do";
	}
}
