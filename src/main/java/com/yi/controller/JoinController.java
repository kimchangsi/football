package com.yi.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yi.domain.MemberVO;
import com.yi.service.MemberService;


@RequestMapping("/auth")
@Controller
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private String innerUploadPath = "resources/images/member"; //서버에 업로드
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public void joinGET() {
		logger.info("------------join GET");
	}
	
	@RequestMapping(value="join2", method=RequestMethod.GET)
	public void join2GET() {
		logger.info("------------join2 GET");
	}
	@RequestMapping(value="join2", method=RequestMethod.POST)
	public String join2POST(MemberVO vo,MultipartFile file, HttpServletRequest request, Model model) throws IOException {
		logger.info("------------join2 POST");
		logger.info("file =" + file.getOriginalFilename());
		logger.info("file size = " + file.getSize());

		String root_path = request.getSession().getServletContext().getRealPath("/"); // ex03 서버
		// ex03/resources/upload
		File dirPath = new File(root_path + "/" + innerUploadPath);
		if (dirPath.exists() == false) { // 폴더없음
			dirPath.mkdir();
		}
		// 빈 껍데기 파일이 만들어짐
		UUID uid = UUID.randomUUID();// 중복되지 않은 고유한 키값을 설정할 때 사용
		String savedName = uid + "_" + file.getOriginalFilename();
		File target = new File(root_path + "/" + innerUploadPath, savedName);
		FileCopyUtils.copy(file.getBytes(), target);// 파일 업로드 완료

		vo.setmImg(savedName);
		service.insert(vo);
		
		return "redirect:/auth/login";
	}
	
	
	@RequestMapping(value="join3/{mId}",method=RequestMethod.GET)
	public ResponseEntity<MemberVO> idcheck(@PathVariable("mId") int mId){
		ResponseEntity<MemberVO> entiy = null;
		try {
			MemberVO gList =  service.idcheck(mId);
			entiy = new ResponseEntity<MemberVO>(gList,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entiy = new ResponseEntity<MemberVO>(HttpStatus.BAD_REQUEST);
		}
		return entiy;
	}
	
}