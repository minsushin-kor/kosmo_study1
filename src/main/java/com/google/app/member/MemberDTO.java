package com.google.app.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {

	private Long memberNum;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPn;
	private String memberEmail;
	
	private MemberFileDTO memberFileDTO;
}
