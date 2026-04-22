package com.google.app.misspet;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.google.app.member.MemberFileDTO;

@Mapper
public interface MisspetMapper {

	public List<MisspetDTO> list(MisspetDTO misspetDTO) throws Exception;
	
	public MisspetDTO detail(MisspetDTO misspetDTO) throws Exception;
	
	public int create(MisspetDTO misspetDTO) throws Exception;

	public int addPetFile(MisspetFileDTO misspetFileDTO) throws Exception;
	
	public int delete(MisspetDTO misspetDTO) throws Exception;
	
	public int deletePetFiles(Long misspetNum) throws Exception;
	
	public int update(MisspetDTO misspetDTO) throws Exception;
}
