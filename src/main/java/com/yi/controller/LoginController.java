package com.yi.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.MemberVO;
import com.yi.service.MemberService;

@RequestMapping("/auth")
@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	MemberService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET() {
		logger.info("------------login GET");
	}
	
	//ajax
	/*@RequestMapping(value="login", method=RequestMethod.POST)
	@ResponseBody// 이 메소드가 리턴하는 값(Map 혹은 빈 객체)을 json 문자열로 변환하여 클라이언트에게 전송한다.
	public Map<String,Boolean> loginPOST(MemberVO vo) {
		logger.info("-----------------login POST,"+vo);
		//로그인 결과를 json 문자열로 클라이언트에게 전송한다.
		boolean result = false;
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		if(vo==null || vo.getmId().equals("") || vo.getmPwd().equals("")) {
			result = false;
		}else {
			result = true;
		}
		map.put("result", result);
		return map; //뷰가 연결되는 것이 아니라 응답 데이터에 해당하는 객체를 리턴한다.
		
	}*/
	
	
	
	// 되는거임
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPOST(MemberVO vo, Model model, HttpSession session) {
		logger.info("-----------------login POST,"+vo);
		
		String returnURL ="";
        if ( session.getAttribute("login") !=null ){
            // 기존에 login이란 세션 값이 존재한다면
            session.removeAttribute("login"); // 기존값을 제거해 준다.
        }
         
        // 로그인이 성공하면 UserVO 객체를 반환함.
        MemberVO mvo = service.selectMemberByIdAndPw(vo.getmId(), vo.getmPwd());
         
        if ( mvo !=null ){ // 로그인 성공
            session.setAttribute("login", mvo); // 세션에 login인이란 이름으로 UserVO 객체를 저장해 놈.
            returnURL ="redirect:/"; // 로그인 성공시 게시글 목록페이지로 바로 이동하도록 하고
        }else { // 로그인에 실패한 경우
        	session.setAttribute("error", "notMatch");
            returnURL ="redirect:/auth/login"; // 로그인 폼으로 다시 가도록 함
            
        }
         
        return returnURL; // 위에서 설정한 returnURL 을 반환해서 이동시킴
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logoutGET(HttpSession session) {
		logger.info("------------logout GET");
		
		session.invalidate();
		return "redirect:/";
	}
	
	
	
	/*@RequestMapping(value="/check2", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<String> check2(MemberVO vo){
		logger.info("-----------------------------check2");
		ResponseEntity<String> entity = null;
		MemberVO mem = service.selectMember(vo);
		
		if(mem==null || !mem.getmPwd().equals(vo.getmPwd())) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}else if(mem!=null || mem.getmPwd().equals(vo.getmPwd())) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}
		
		return entity;
	}*/
}