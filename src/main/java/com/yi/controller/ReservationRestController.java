package com.yi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yi.domain.ReservationVO;
import com.yi.service.ReservationService;


@RestController
public class ReservationRestController {
	private static final Logger logger = LoggerFactory.getLogger(ReservationRestController.class);
	
	@Autowired
	private ReservationService rService;
	
	//selectBox 구장선택시 예약된 정보를 가져옴
	@RequestMapping(value="reservation/form2/{sNo}/{sDate}/{gNo}",method=RequestMethod.GET)
	public ResponseEntity<List<ReservationVO>> selectlist(@PathVariable("sNo") int sNo,@PathVariable("sDate") String sDate,@PathVariable("gNo") int gNo){
		ResponseEntity<List<ReservationVO>> entiy = null;
		System.out.println(sNo+"dd"+sDate+"dd"+gNo);
		try {
			List<ReservationVO> Rlist = rService.selectByrGnoRtime(gNo, sDate);
			
			for (ReservationVO reservationVO : Rlist) {
				logger.info(reservationVO.toString());
			}
			entiy = new ResponseEntity<List<ReservationVO>>(Rlist,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entiy = new ResponseEntity<List<ReservationVO>>(HttpStatus.BAD_REQUEST);
		}
		return entiy;
	}
}
