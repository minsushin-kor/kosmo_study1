package com.google.app.misspet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.app.file.FileManager;
import com.google.app.member.MemberDTO;

@Service
public class MisspetService {
	
	@Autowired
	private MisspetMapper misspetMapper;
	
	@Autowired
	private FileManager fileManager;
	
	@Value("${app.misspet}")
	private String name;
	
	public List<MisspetDTO> list(MisspetDTO misspetDTO) throws Exception{
		return misspetMapper.list(misspetDTO);
	}
	
	public MisspetDTO detail(MisspetDTO misspetDTO) throws Exception{
		
		return misspetMapper.detail(misspetDTO);
	}
	
	public int create(MisspetDTO misspetDTO, MultipartFile[] files) throws Exception{
				
        int result = misspetMapper.create(misspetDTO);
        
        if (files != null) {

            for (MultipartFile file : files) {
                if (!file.isEmpty()) {
                    String fileName = fileManager.fileSave(name, file);
                    
                    MisspetFileDTO misspetFileDTO = new MisspetFileDTO();
                    misspetFileDTO.setFileName(fileName);
                    misspetFileDTO.setFileOriName(file.getOriginalFilename());
                    misspetFileDTO.setMisspetNum(misspetDTO.getMisspetNum());
                    
                    result = misspetMapper.addPetFile(misspetFileDTO);
                }
            }
        }
        
        return result;
	}
	
	public int delete(MisspetDTO misspetDTO) throws Exception{
		return misspetMapper.delete(misspetDTO);
	}
	
	public int update(MisspetDTO misspetDTO, MultipartFile[] attach) throws Exception{
		int result = misspetMapper.update(misspetDTO);
		
		boolean hasNewFile = false;
	    if (attach != null) {
	        for (MultipartFile f : attach) {
	            if (!f.isEmpty()) {
	                hasNewFile = true;
	                break;
	            }
	        }
	    }
	    
	    if (hasNewFile) {
	    	MisspetDTO oldData = misspetMapper.detail(misspetDTO);
	        
	        if (oldData != null && oldData.getMisspetFileDTO() != null) {
	            for (MisspetFileDTO oldFile : oldData.getMisspetFileDTO()) {
	                fileManager.fileDelete("misspet", oldFile);
	            }
	        }

	        misspetMapper.deletePetFiles(misspetDTO.getMisspetNum());
	        
	        for (MultipartFile f : attach) {
	            if (!f.isEmpty()) {
	                String fileName = fileManager.fileSave("misspet", f);
	               
	                MisspetFileDTO fileDTO = new MisspetFileDTO(); 
	                fileDTO.setFileName(fileName);
	                fileDTO.setFileOriName(f.getOriginalFilename());
	                fileDTO.setMisspetNum(misspetDTO.getMisspetNum());
	                
	                misspetMapper.addPetFile(fileDTO); 
	            }
	        }
	    }
		
		return result;
	}
}
