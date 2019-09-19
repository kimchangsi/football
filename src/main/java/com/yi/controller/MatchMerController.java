package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.GroundVO;
import com.yi.domain.MatchBoardVO;
import com.yi.domain.MemberVO;
import com.yi.domain.ReservationVO;
import com.yi.domain.SpotVO;
import com.yi.service.MatchMerService;


@Controller
public class MatchMerController {
	@Autowired
	private MatchMerService mService;
	
	private static final Logger logger = LoggerFactory.getLogger(MatchMerController.class);
	//매치용병메인화면
	@RequestMapping(value = "/match", method = RequestMethod.GET)
	public String header() throws Exception {
		logger.info("match");
		return "match/match";
	}
	
	//매치 등록화면
	@RequestMapping(value = "/match/apply", method = RequestMethod.GET)
	public String matchApply(Model model) throws Exception {
		logger.info("match apply");
		MemberVO member = mService.selectByID("kcm");
		List<SpotVO> spotList = mService.selectByAll();
		
		model.addAttribute("member",member);
		model.addAttribute("spotList",spotList);
		for (SpotVO spotVO : spotList) {
			logger.info(spotVO.toString());
		}
		
		return "match/matchApply";
	}
	
	//선택된 지점 구장가져오기(ajax)
	@RequestMapping(value="match/appliy/{sNo}",method=RequestMethod.GET)
	public ResponseEntity<List<GroundVO>> selectlist(@PathVariable("sNo") int sNo){
		ResponseEntity<List<GroundVO>> entiy = null;
		try {
			List<GroundVO> gList =  mService.selectBygNo(sNo);
			entiy = new ResponseEntity<List<GroundVO>>(gList,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entiy = new ResponseEntity<List<GroundVO>>(HttpStatus.BAD_REQUEST);
		}
		return entiy;
	}
	
	
	//매치게시판 등록 시
	@RequestMapping(value = "/match/resist", method = RequestMethod.POST)
	public String resist(MatchBoardVO vo,MemberVO mVo,GroundVO gVo,String mbTime2) throws Exception  {
		logger.info("match/apply");
		logger.info(vo.toString());
		logger.info(mVo.toString());
		logger.info(gVo.toString());
		logger.info(mbTime2);
		
		String mbTime = vo.getMbTime()+" "+mbTime2;
		logger.info(mbTime);
		vo.setMbMember(mVo);
		vo.setMbGno(gVo);
		vo.setMbTime(mbTime);
		
		mService.insertMatch(vo);
		
		return "redirect:/match";
	}
	
	
}
