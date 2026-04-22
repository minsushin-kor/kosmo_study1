package com.google.app.misspet;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MisspetMapper {

	public List<MisspetDTO> list(MisspetDTO misspetDTO) throws Exception;
	
	public MisspetDTO detail(MisspetDTO misspetDTO) throws Exception;
	
	public int create(MisspetDTO misspetDTO) throws Exception;
	
	public int delete(MisspetDTO misspetDTO) throws Exception;
	
	public int update(MisspetDTO misspetDTO) throws Exception;
}
