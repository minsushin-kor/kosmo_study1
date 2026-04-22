package com.google.app.misspet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.app.member.MemberDTO;

@Service
public class MisspetService {
	
	@Autowired
	private MisspetMapper misspetMapper;
	
	public List<MisspetDTO> list(MisspetDTO misspetDTO) throws Exception{
		return misspetMapper.list(misspetDTO);
	}
	
	public MisspetDTO detail(MisspetDTO misspetDTO) throws Exception{
		return misspetMapper.detail(misspetDTO);
	}
	
	public int create(MisspetDTO misspetDTO) throws Exception{
				
        return misspetMapper.create(misspetDTO);
	}
	
	public int delete(MisspetDTO misspetDTO) throws Exception{
		return misspetMapper.delete(misspetDTO);
	}
	
	public int update(MisspetDTO misspetDTO) throws Exception{
		return misspetMapper.update(misspetDTO);
	}
}
