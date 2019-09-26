package com.yi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.LoginVO;
import com.yi.domain.MemberVO;
import com.yi.service.MemberService;

@RequestMapping("/auth")
@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	MemberService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET() {
		logger.info("------------login GET");
	}
	
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void loginPOST(MemberVO vo, Model model) {
		logger.info("-----------------login POST,"+vo);
		
		MemberVO dbMember = service.selectMemberByIdAndPw(vo.getmId(), vo.getmPwd());
		
		if(dbMember == null) {
			logger.info("loginPOST .......... login fail, not member");
			return;
		}
		LoginVO dto = new LoginVO();
		dto.setUserid(dbMember.getmId());
		dto.setUsername(dbMember.getmName());
		model.addAttribute("loginDTO",dto);
	}
	
	/*@RequestMapping(value="/check2", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<String> check2(MemberVO vo){
		logger.info("-----------------------------check2");
		ResponseEntity<String> entity = null;
		MemberVO mem = service.selectMember(vo);
		
		if(mem==null || !mem.getmPwd().equals(vo.getmPwd())) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}else if(mem!=null || mem.getmPwd().equals(vo.getmPwd())) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}
		
		return entity;
	}*/
}