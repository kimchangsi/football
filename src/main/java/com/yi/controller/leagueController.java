package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.LeagueKindVO;
import com.yi.domain.LeagueVO;
import com.yi.domain.MemberVO;
import com.yi.service.LeagueService;

@Controller
public class leagueController {

	@Autowired
	LeagueService service;

	private static final Logger logger = LoggerFactory.getLogger(leagueController.class);

	// 매치용병메인화면
	@RequestMapping(value = "/league", method = RequestMethod.GET)
	public String header(Model model) throws Exception {
		logger.info("league");

		return "league/league";
	}

	// 리그 접수 선택화면
	@RequestMapping(value = "/league/receipt", method = RequestMethod.GET)
	public String leagueReceipt(Model model) throws Exception {
		logger.info("leagueReceipt");
		List<LeagueKindVO> list = service.selectLeagueKindByAll();
		MemberVO member = new MemberVO();
		member.setmId("kcm");
		member.setmName("김창민");
		member.setmTel("010-3334-6496");
		model.addAttribute("list", list);
		model.addAttribute("member", member);
		return "league/leagueReceipt";
	}

	// 리그 등록
	@RequestMapping(value = "/league/resist", method = RequestMethod.POST)
	public String leagueResister(Model model, LeagueVO vo) throws Exception {
		logger.info("leaguerResist");
		logger.info(vo.toString());
		service.insertLeague(vo);
		return "redirect:/league";
	}

	// 리그 관리자
	@RequestMapping(value = "/manager/leagueMgn", method = RequestMethod.GET)
	public String leagueMgn(Model model) throws Exception {
		logger.info("leagueMgn");
		List<LeagueVO> list = service.selectLeagueByRandom(); 
		logger.info(list.toString());
		model.addAttribute("list",list);
		return "/manager/leagueMgn";
	}
}
