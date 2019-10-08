package com.yi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yi.domain.CustomerVO;
import com.yi.service.CustomerService;

@Controller
public class CustomerController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	CustomerService service;
	
	@RequestMapping(value="customer", method=RequestMethod.GET)
	public ModelAndView customerGET() throws Exception {
		logger.info("------------customer GET");
		List<CustomerVO> list = service.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("customer/customer");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/customer/noticeApply", method=RequestMethod.GET)
	public String write(){
		logger.info("notice apply");
		return "customer/noticeApply";
	}

	@RequestMapping(value="customer/create", method=RequestMethod.POST)
    public String insert(@ModelAttribute CustomerVO vo) throws Exception{
        service.create(vo);
        return "redirect:/customer";
    }
	
	
	 @RequestMapping(value="customer/view", method=RequestMethod.GET)
     public ModelAndView view(@RequestParam int nNo, HttpSession session) throws Exception{
        // 조회수 증가 처리
		service.increaseViewcnt(nNo, session);
        // 모델(데이터)+뷰(화면)를 함께 전달하는 객체
        ModelAndView mav = new ModelAndView();
        // 뷰의 이름
        mav.setViewName("customer/view");
        // 뷰에 전달할 데이터
        mav.addObject("dto", service.read(nNo));
        return mav;
    }
	 
	 @RequestMapping(value="customer/noticeModify", method=RequestMethod.GET)
	 public ModelAndView update1(@ModelAttribute CustomerVO vo,@RequestParam int nNo, HttpSession session) throws Exception{
		 logger.info(vo.getnNo()+"");
		 
		 ModelAndView mav = new ModelAndView();
		 mav.setViewName("customer/noticeModify");
		 mav.addObject("dto", service.read(nNo));
		 return mav;
    }
	 
	 @RequestMapping(value="customer/noticeModify", method=RequestMethod.POST)
	 public String update2(@ModelAttribute CustomerVO vo) throws Exception{
	 	service.update(vo);
        return "redirect:/customer";
    }

	 @RequestMapping("delete")
	    public String delete(@RequestParam int nNo) throws Exception{
		 service.delete(nNo);
	        return "redirect:/customer";
	    }
	
	
	
	
	
	
	
}