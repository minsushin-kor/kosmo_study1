package com.google.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.app.file.FileManager;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private FileManager fileManager;
		
	@Value("${app.member}")
	private String name;
	
	public int join(MemberDTO memberDTO, MultipartFile file) throws Exception{
		int result = memberMapper.join(memberDTO);
		
		if(file != null && !file.isEmpty()) {
			String fileName = fileManager.fileSave(name, file);
			
			MemberFileDTO memberFileDTO = new MemberFileDTO();
			memberFileDTO.setFileName(fileName);
			memberFileDTO.setFileOriName(file.getOriginalFilename());
			memberFileDTO.setMemberNum(memberDTO.getMemberNum());
			
			result = memberMapper.addProfile(memberFileDTO);
		}
		
		return result;
	}
	
	public MemberDTO login(MemberDTO memberDTO) throws Exception{
		
		MemberDTO check = memberMapper.login(memberDTO);
		
		if(check != null) {

	        if(check.getMemberPw().trim().equals(memberDTO.getMemberPw().trim())) {
	            return check;
	        }
	    }
		
		return null;
	}
}
