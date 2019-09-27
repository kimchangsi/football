package com.yi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class leagueController {
	
	private static final Logger logger = LoggerFactory.getLogger(leagueController.class);
	//매치용병메인화면
	@RequestMapping(value = "/league", method = RequestMethod.GET)
	public String header(Model model) throws Exception {
		logger.info("league");

		return "league/league";
	}
	
	
	
	
	
	
	
	
	
	
}
