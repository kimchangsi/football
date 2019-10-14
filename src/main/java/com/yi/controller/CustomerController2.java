package com.yi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yi.domain.CustomerVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.CustomerService;

@Controller
public class CustomerController2 {
	private static final Logger logger = LoggerFactory.getLogger(CustomerController2.class);
	@Autowired
	CustomerService service;
	
	@RequestMapping(value="customer2", method=RequestMethod.GET)
	public ModelAndView customerGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("------------customer GET");
		List<CustomerVO> list = service.listSearch(cri);
		model.addAttribute("list",list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker",pageMaker);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("customer2/customer2");
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping(value="/customer2/noticeApply2", method=RequestMethod.GET)
	public String write(){
		logger.info("---------------------------write");
		return "customer2/noticeApply2";
	}

	@RequestMapping(value="customer2/create2", method=RequestMethod.POST)
    public String insert(@ModelAttribute CustomerVO vo) throws Exception{
		logger.info("---------------------------insert");
        service.create(vo);
        return "redirect:/customer2";
    }
	
	
	 @RequestMapping(value="customer2/view2", method=RequestMethod.GET)
     public ModelAndView view(@RequestParam int nNo, HttpSession session) throws Exception{
		 logger.info("---------------------------view2");
        // 조회수 증가 처리
		service.increaseViewcnt(nNo, session);
        // 모델(데이터)+뷰(화면)를 함께 전달하는 객체
        ModelAndView mav = new ModelAndView();
        // 뷰의 이름
        mav.setViewName("customer2/view2");
        // 뷰에 전달할 데이터
        mav.addObject("dto", service.read(nNo));
        return mav;
    }
	 
	 @RequestMapping(value="customer2/noticeModify2", method=RequestMethod.GET)
	 public ModelAndView update1(@ModelAttribute CustomerVO vo,@RequestParam int nNo, HttpSession session) throws Exception{
		 logger.info(vo.getnNo()+"");
		 
		 ModelAndView mav = new ModelAndView();
		 mav.setViewName("customer2/noticeModify2");
		 mav.addObject("dto", service.read(nNo));
		 return mav;
    }
	 
	 @RequestMapping(value="customer2/noticeModify2", method=RequestMethod.POST)
	 public String update2(@ModelAttribute CustomerVO vo) throws Exception{
		 logger.info("---------------------------update2");
	 	service.update(vo);
        return "redirect:/customer2";
    }

	 @RequestMapping("delete2")
	    public String delete(@RequestParam int nNo) throws Exception{
		 logger.info("---------------------------delete");
		 service.delete(nNo);
	        return "redirect:/customer2";
	    }
	
	
	
	
	
	
	
}