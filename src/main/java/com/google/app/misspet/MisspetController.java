package com.google.app.misspet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.app.member.MemberDTO;
import com.google.app.member.MemberService;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/misspet/*")
public class MisspetController {

    @Autowired
	private MisspetService misspetService;
	
	@GetMapping("list")
	public String list(MisspetDTO misspetDTO, Model model)throws Exception {
		List<MisspetDTO> ar = misspetService.list(misspetDTO);
		model.addAttribute("list", ar);
		return "board/list";
	}
	
	@GetMapping("detail")
	public String detail(MisspetDTO misspetDTO, Model model, HttpSession session)throws Exception {
		misspetDTO = misspetService.detail(misspetDTO);
		model.addAttribute("dto", misspetDTO);
				
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		return "board/detail";
	}
	
	@GetMapping("create")
	public String create()throws Exception{
		return "board/create";
	}
	
	@PostMapping("create")
	public String create(MisspetDTO misspetDTO, @RequestParam("attach") MultipartFile[] attach, HttpSession session)throws Exception{
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
	    
	    if(memberDTO != null) {
	        misspetDTO.setMemberNum(memberDTO.getMemberNum());
	        misspetDTO.setMisspetWriterId(memberDTO.getMemberId());
	        misspetDTO.setMisspetPn(memberDTO.getMemberPn());
	        misspetDTO.setMisspetEmail(memberDTO.getMemberEmail());
	    }
	    
	    int result = misspetService.create(misspetDTO, attach);
		return "redirect:/misspet/list";
	}
	
	@PostMapping("delete")
	public String delete(MisspetDTO misspetDTO) throws Exception{
		int result = misspetService.delete(misspetDTO);
		return "redirect:./list";
	}
	
	@GetMapping("update")
	public String update(MisspetDTO misspetDTO, Model model)throws Exception{
		misspetDTO = misspetService.detail(misspetDTO);
		model.addAttribute("dto", misspetDTO);
		return "board/update";
	}
	
	@PostMapping("update")
	public String update(MisspetDTO misspetDTO, @RequestParam("attach") MultipartFile[] files, HttpSession session) throws Exception{
		
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
	    
	    if(memberDTO != null) {
	        misspetDTO.setMemberNum(memberDTO.getMemberNum());
	        misspetDTO.setMisspetWriterId(memberDTO.getMemberId());
	        misspetDTO.setMisspetPn(memberDTO.getMemberPn());
	        misspetDTO.setMisspetEmail(memberDTO.getMemberEmail());
	    }
	    
		int result = misspetService.update(misspetDTO, files);
		return "redirect:./list";
	}
}
