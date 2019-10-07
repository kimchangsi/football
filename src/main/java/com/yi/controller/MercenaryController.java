package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.GroundVO;
import com.yi.domain.MatchBoardVO;
import com.yi.domain.MemberVO;
import com.yi.domain.MercenaryBoardVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.domain.SpotVO;
import com.yi.service.MercenaryService;

@Controller
public class MercenaryController {
	@Autowired
	private MercenaryService mcService;
	
	private static final Logger logger = LoggerFactory.getLogger(MercenaryController.class);
	
	//용병메인화면
	@RequestMapping(value = "/mercenary", method = RequestMethod.GET)
	public String header(SearchCriteria cri,Model model) throws Exception {
		logger.info("용병게시판~");
		logger.info(cri.toString());
		mcService.updateApplicationMer();
		List<MercenaryBoardVO> list = mcService.selectByall(cri);
		
		
		List<MercenaryBoardVO> list2 = mcService.selectByall2();
		List<SpotVO> spotList = mcService.selectByAll();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(list2.size());
		
		model.addAttribute("spotList",spotList);
		model.addAttribute("list",list);
		model.addAttribute("pageMaker",pageMaker);
		return "mercenary/mercenary";
	}
	
	//용병마감 눌렀을때
	@RequestMapping(value = "/mercenary2", method = RequestMethod.GET)
	public String header2(SearchCriteria cri,Model model,int mbNo) throws Exception {
		logger.info("mercenary2");
		mcService.updateDeadLine(mbNo);
		return "redirect:/mercenary?page="+cri.getPage();
	}
	
	//용병게시판 수정 시
	@RequestMapping(value = "/mercenary/update", method = RequestMethod.POST)
	public String update(SearchCriteria cri,MercenaryBoardVO vo,GroundVO gVo,SpotVO sVo, String mcbTime2) throws Exception  {
		logger.info("mercenary/update");
		logger.info(vo.toString());
		logger.info(gVo.toString());
		logger.info(sVo.toString());
		logger.info(mcbTime2);
		
		String mcbTime = vo.getMcbTime()+" "+mcbTime2;
		logger.info(mcbTime);
		gVo.setgSno(sVo);
		vo.setMcbGno(gVo);
	    vo.setMcbTime(mcbTime);
	    mcService.updateMercenaryBoard(vo);
		
		
		return "redirect:/mercenary?page="+cri.getPage();
	}
	
	//용병 등록화면
		@RequestMapping(value = "/mercenary/apply", method = RequestMethod.GET)
		public String matchApply(Model model) throws Exception {
			logger.info("mercenary apply");
			MemberVO member = mcService.selectByID("kcm");
			List<SpotVO> spotList = mcService.selectByAll();
			
			model.addAttribute("member",member);
			model.addAttribute("spotList",spotList);
			for (SpotVO spotVO : spotList) {
				logger.info(spotVO.toString());
			}
			
			return "mercenary/mercenaryApply";
		}
		
		
		//용병게시판 등록 시
		@RequestMapping(value = "/mercenary/resist", method = RequestMethod.POST)
		public String resist(MercenaryBoardVO vo,MemberVO mVo,GroundVO gVo,String mcbTime2) throws Exception  {
			logger.info("mercenary/apply");
			logger.info(vo.toString());
			logger.info(mVo.toString());
			logger.info(gVo.toString());
			logger.info(mcbTime2);
			
			String mcbTime = vo.getMcbTime()+" "+mcbTime2;
			logger.info(mcbTime);
			vo.setMcbMember(mVo);
			vo.setMcbGno(gVo);
			vo.setMcbTime(mcbTime);
			
			mcService.insertMercenary(vo);
			
			return "redirect:/mercenary";
		}
		
}
