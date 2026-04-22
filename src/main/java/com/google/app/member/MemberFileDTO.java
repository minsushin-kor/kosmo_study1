package com.google.app.member;

import com.google.app.file.FileDTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberFileDTO extends FileDTO{

	private Long memberNum;
	
}
