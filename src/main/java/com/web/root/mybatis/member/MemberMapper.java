package com.web.root.mybatis.member;

import com.web.root.dto.MemberDTO;

public interface MemberMapper {

	public MemberDTO user_check(String id);
	
	public int writesave(MemberDTO dto);

	public int checkId(MemberDTO dto);

	public MemberDTO viewinfo(String id);

	public int modify(MemberDTO dto);

	public int delete(String id);

	
}
