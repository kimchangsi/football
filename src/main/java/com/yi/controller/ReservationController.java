package com.yi.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yi.domain.GroundVO;
import com.yi.domain.MemberVO;
import com.yi.domain.ReservationVO;
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
	public String check(Model model,HttpSession session) throws Exception {
		
		logger.info("reservation Check");
		
			MemberVO vo =  (MemberVO) session.getAttribute("login");
			List<ReservationVO> list = reseService.selecyByID(vo.getmId());
			model.addAttribute("list",list);
		
		
		
		return "reservation/reseMyCheck";
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
		
		//구장예약 완료
		@RequestMapping(value = "/reservation/ok", method = RequestMethod.POST)
		public String reservationPage( ReservationVO vo) throws Exception { 
			logger.info(vo.toString());
			reseService.insertReservation(vo); 
			return "redirect:/reservation";
		}
		
		//구장예약 취소
		@RequestMapping(value="reservation/update/{rNo}",method=RequestMethod.GET)
		public ResponseEntity<List<ReservationVO>> updateRes(ReservationVO vo, HttpSession session){
			logger.info(vo.toString()+"============================================================");
			ResponseEntity<List<ReservationVO>> entiy = null;
			MemberVO mem = (MemberVO)session.getAttribute("login");
			
			try {
				reseService.updateReservation(vo);
				List<ReservationVO> Rlist = reseService.selecyByID(mem.getmId());
				
				entiy = new ResponseEntity<List<ReservationVO>>(Rlist,HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entiy = new ResponseEntity<List<ReservationVO>>(HttpStatus.BAD_REQUEST);
			}
			return entiy;
		}
	
}
