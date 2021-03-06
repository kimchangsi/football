package com.yi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("LoginInterceptor.......... preHandler");
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {		
		logger.info("LoginInterceptor.......... postHandler");
		HttpSession session = request.getSession();
		
		Object loginDTO = modelAndView.getModel().get("loginDTO");
		if(loginDTO != null) {
			//session.setAttribute("Auth", loginDTO);
			session.setAttribute("login", loginDTO); // 세션에 login인이란 이름으로 memberVO 객체를 저장해 놈.
			Object dest = session.getAttribute("dest");
			String path = (dest != null) ? (String) dest : request.getContextPath();			
			response.sendRedirect(path);//home화면
		}else {
			 session.setAttribute("error", "notMatch");
	         response.sendRedirect(request.getContextPath()+"/auth/login");
		}
	}

	
}




