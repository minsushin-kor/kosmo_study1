package com.google.app.file;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	@Value("${app.upload.base}")
	private String path;

	public String fileSave(String name, MultipartFile mf) throws Exception{
		// 1. 폴더 경로 설정 (D:/fileUpload/member)
	    File dir = new File(path, name);

	    // 2. 폴더가 없으면 생성
	    if(!dir.exists()) {
	        dir.mkdirs();
	    }
	    
	    // 3. 중복되지 않는 파일명 생성 (UUID + 원본파일명)
	    String fileName = UUID.randomUUID().toString() + "_" + mf.getOriginalFilename();
	    
	    // 4. ⭐ 중요: 폴더(dir) 경로 안에 실제 파일명(fileName)을 가진 파일 객체 생성
	    File targetFile = new File(dir, fileName); 
	    
	    // 5. 생성한 파일 객체로 실제 파일 저장
	    mf.transferTo(targetFile); 
	    
	    return fileName;
	}
	
}
