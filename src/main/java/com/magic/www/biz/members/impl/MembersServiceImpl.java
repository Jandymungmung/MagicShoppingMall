package com.magic.www.biz.members.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.magic.www.biz.members.MembersVO;

@Service("membersService")
public class MembersServiceImpl implements MembersService{
	@Autowired
	private MembersDAOMybatis membersDAO;

	@Override
	public void insertMember(MembersVO vo) {
		membersDAO.insertMember(vo);
	}

//	@Override
//	public void updateMember(MembersVO vo) {
//		membersDAO.updateMember(vo);
//	}

	@Override
	public void deleteMember(MembersVO vo) {
		membersDAO.deleteMember(vo);
	}

	@Override
	public MembersVO getId(MembersVO vo) {
		return membersDAO.getId(vo);
	}

	@Override
	public MembersVO login(MembersVO vo) {
		return membersDAO.login(vo);
	}
	
}
