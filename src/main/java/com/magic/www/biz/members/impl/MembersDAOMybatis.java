package com.magic.www.biz.members.impl;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.magic.www.biz.members.MembersVO;

@Repository
public class MembersDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(MembersVO vo) {
		System.out.println("--> Mybatis로 inserMember() 기능 처리");
		mybatis.insert("MembersDAO.insertMember", vo);
	}
	
//	아직 미구현
//	public void updateMember(MembersVO vo) {
//		System.out.println("--> Mybatis로 updateMember() 기능 처리");
//		mybatis.update("MembersDAO.updateMember", vo);
//	}
	
	public void deleteMember(MembersVO vo) {
		System.out.println("--> Mybatis로 deleteMember() 기능 처리");
		mybatis.delete("MembersDAO.deleteMember", vo);
	}

	public MembersVO getId(MembersVO vo) {
		System.out.println("--> Mybatis로 getId() 기능 처리");
		return mybatis.selectOne("MembersDAO.getId", vo);
	}
	
	public MembersVO login(MembersVO vo) {
		System.out.println("--> Mybatis로 login() 기능 처리");
		return mybatis.selectOne("MembersDAO.login", vo);
	}
}
