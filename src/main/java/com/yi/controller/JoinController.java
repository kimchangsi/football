package com.yi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.MemberVO;
import com.yi.service.MemberService;


@RequestMapping("/auth")
@Controller
public class JoinController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	MemberService service;
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public void joinGET() {
		logger.info("------------join GET");
	}
	
	@RequestMapping(value="join2", method=RequestMethod.GET)
	public void join2GET() {
		logger.info("------------join2 GET");
	}
	
	@RequestMapping(value="joinPost", method=RequestMethod.POST)
	public String loginPOST(MemberVO vo) {
		logger.info("------------join POST,"+vo);
		
		service.insert(vo);
		
		return "/football/";
	}
}