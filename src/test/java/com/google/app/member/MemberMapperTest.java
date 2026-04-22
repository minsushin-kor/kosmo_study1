package com.google.app.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class MemberMapperTest {

	@Autowired
	private MemberMapper memberMapper;
	
//	@Test
//	void testJoin() throws Exception {
//		MemberDTO memberDTO = new MemberDTO();
//		memberDTO.setMemberId("qwerty");
//		memberDTO.setMemberPw("1234");
//		memberDTO.setMemberName("홍길동");
//		memberDTO.setMemberPn("010-1234-5678");
//		memberDTO.setMemberEmail("qwerty@naver.com");
//		
//		int result = memberMapper.join(memberDTO);
//		assertNotEquals(0, result);
//	}

}
