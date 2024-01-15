package com.magic.www.biz.members.impl;

import com.magic.www.biz.members.MembersVO;

public interface MembersService {
	void insertMember(MembersVO vo);
	
//	void updateMember(MembersVO vo);
	
	void deleteMember(MembersVO vo);

	MembersVO getId(MembersVO vo);
	
	MembersVO login(MembersVO vo);
}
