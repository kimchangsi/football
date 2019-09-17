package com.yi.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yi.domain.SpotVO;
import com.yi.service.SpotService;

@Controller
public class SpotController {
	private static final Logger logger = LoggerFactory.getLogger(SpotController.class);
	@Autowired
	private SpotService service;
	
	private String innerUploadPath = "resources/images/spot"; //서버에 업로드
	
	
	@RequestMapping(value = "/spot", method = RequestMethod.GET)
	public String header(Model model) throws Exception {
		logger.info("spot");
		List<SpotVO> list = service.selectByAll();
		for(SpotVO vo : list) {
			System.out.println(vo);
		}
		model.addAttribute("list",list);
		return "spot/spot";
	}
	
	
	@RequestMapping(value = "/innerUpload", method = RequestMethod.GET)
	public String innerUploadForm() {
		logger.info("---------------------------innerUpload get");
		return "manager/innerUploadForm";
	}
	
	@RequestMapping(value = "/innerUpload", method = RequestMethod.POST)
	public String innerUploadPost(SpotVO spot, MultipartFile file, HttpServletRequest request, Model model)
			throws Exception {
		logger.info("---------------------------innerUpload post");
		logger.info("file =" + file.getOriginalFilename());
		logger.info("file size = " + file.getSize());

		String root_path = request.getSession().getServletContext().getRealPath("/"); // ex03서버
		// ex03/resources/upload

		File dirPath = new File(root_path + "/" + innerUploadPath);

		if (dirPath.exists() == false) {// 폴더없음
			dirPath.mkdir();// 업로드 폴더만듬
		}
		
		// 빈 껍데기 파일이 만들어짐
		UUID uid = UUID.randomUUID();// 중복되지 않는 고유한 키값을 설정할 때 사용
		String saveName = uid + "_" + file.getOriginalFilename();
		File target = new File(root_path + "/" + innerUploadPath, saveName);
		FileCopyUtils.copy(file.getBytes(), target);// 파일 업로드 완료
		
		spot.setsImg(saveName);

		logger.info("spotVO -------------------------------------" ,spot);
		
		service.insert(spot);
		return "manager/innerUploadForm";
	}
}
