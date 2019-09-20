package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yi.domain.GroundVO;
import com.yi.domain.SpotVO;
import com.yi.service.ReservationService;
import com.yi.service.SpotService;

@Controller
public class ReservationController {
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	@Autowired
	private SpotService spotService;
	
	@Autowired
	private ReservationService reseService;
	
	//구장예약 메인화면
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		logger.info("reservation");
		List<SpotVO> sList = spotService.selectByAll();
		for (SpotVO vo : sList) {
			logger.info(vo.toString());
		}
		model.addAttribute("sList",sList);
		return "reservation/rese";
	}
	
	//구장예약 확인 화면
	@RequestMapping(value = "/reservation/check", method = RequestMethod.GET)
	public String check(Model model) throws Exception {
		logger.info("reservation Check");
		
		return "reservation/reseCheck";
	} 
	
	//구장예약 화면
		@RequestMapping(value = "/reservation/form", method = RequestMethod.GET)
		public String reservationPage(@RequestParam(required=true, name="sNo") int sNo, Model model) throws Exception {
			logger.info("reservation Form"+sNo);
			
			List<GroundVO> gList = reseService.selectGroundBygNo(sNo); //지점의 구장들 리스트
			SpotVO s = reseService.selectBySno(sNo);//지점의 정보들
			
			/*for (GroundVO groundVO : gList) {
				logger.info(groundVO.toString());
			}*/
			
			logger.info(s.toString());
			model.addAttribute("gList",gList);
			model.addAttribute("sNo", sNo);
			model.addAttribute("s",s);
			
			return "reservation/reseForm";
		}
	
}
