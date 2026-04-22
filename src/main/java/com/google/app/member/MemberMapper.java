package com.google.app.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	public int join(MemberDTO memberDTO) throws Exception;
	
	public int addProfile(MemberFileDTO memberFileDTO) throws Exception;
	
	public MemberDTO login(MemberDTO memberDTO) throws Exception;
}
