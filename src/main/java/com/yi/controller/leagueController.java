package com.yi.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.taglibs.standard.lang.jstl.LessThanOrEqualsOperator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.yi.domain.LeagueKindVO;
import com.yi.domain.LeagueVO;
import com.yi.domain.MemberVO;
import com.yi.domain.SpotVO;
import com.yi.service.LeagueService;

@Controller
public class leagueController {

	@Autowired
	LeagueService service;

	private static final Logger logger = LoggerFactory.getLogger(leagueController.class);
	private String innerUploadPath = "resources/images/team"; //서버에 업로드
	// 리그메인화면
	@RequestMapping(value = "/league", method = RequestMethod.GET)
	public String header(Model model) throws Exception {
		logger.info("league");

		return "league/league";
	}

	// 리그현황 구장선택 화면
	@RequestMapping(value = "/league/check", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		logger.info("leauge/check");
		List<LeagueKindVO> list = service.selectLeagueKindByAll();
		model.addAttribute("list", list);
		return "league/leagueCheck";
	}

	// 리그선택 후 대진표 화면
	@RequestMapping(value = "/league/draw", method = RequestMethod.GET)
	public String main2(Model model,LeagueKindVO vo) throws Exception {
		logger.info("leauge/draw");
		model.addAttribute("vo",vo);
		return "league/leagueDraw";
	}
	
	// 관리자 리그 리스트 가져오기(ajax)  //여기에 처리해야함 팀리스같이 보여줄려면
		@RequestMapping(value = "/league/leagueMgn4", method = RequestMethod.POST)
		public ResponseEntity<Map<String, Object>> selectlist2(@RequestBody LeagueKindVO vo) {
			ResponseEntity<Map<String, Object>> entiy = null;
			try {
				List<LeagueVO> list = service.selectLeagueByLeagueKind(vo);
				List<LeagueVO> listTeam = service.selectLeagueTeam(vo);
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("list", list);
				map.put("tList", listTeam);
				entiy = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
				entiy = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
			}
			return entiy;
		}
	
	
	

	// 리그 접수 선택화면
	@RequestMapping(value = "/league/receipt", method = RequestMethod.GET)
	public String leagueReceipt(Model model) throws Exception {
		logger.info("leagueReceipt");
		List<LeagueKindVO> list = service.selectLeagueKindByAll();
		MemberVO member = new MemberVO();
		member.setmId("kcm");
		member.setmName("김창민");
		member.setmTel("010-3334-6496");
		model.addAttribute("list", list);
		model.addAttribute("member", member);
		return "league/leagueReceipt";
	}

	// 리그 등록
	@RequestMapping(value = "/league/resist", method = RequestMethod.POST)
	public String leagueResister(Model model,HttpServletRequest request,MultipartFile file, LeagueVO vo) throws Exception {
		logger.info("leaguerResist");
		logger.info(vo.toString());
		logger.info(file.getOriginalFilename()+"====================================");
		
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
		
		vo.getlTeam().settMark(saveName); 
		
		
		service.insertLeague(vo);
		return "redirect:/league";
	}

	// 리그 관리자
	@RequestMapping(value = "/manager/leagueMgn", method = RequestMethod.GET)
	public String leagueMgn(Model model) throws Exception {
		logger.info("leagueMgn");
		
		/*
		 * List<LeagueVO> list = service.selectLeagueByRandom();
		 * logger.info(list.toString()); model.addAttribute("list",list)
		 */;
		return "/manager/leagueMgn";
	}

	// 관리자 리그 리스트 가져오기(ajax)
	@RequestMapping(value = "/manager/leagueMgn2/{lkName}", method = RequestMethod.GET)
	public ResponseEntity<List<LeagueVO>> selectlist(LeagueKindVO vo) {
		ResponseEntity<List<LeagueVO>> entiy = null;
		try {
			List<LeagueVO> list = service.selectLeagueByLeagueKind(vo);
			entiy = new ResponseEntity<List<LeagueVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entiy = new ResponseEntity<List<LeagueVO>>(HttpStatus.BAD_REQUEST);
		}
		return entiy;
	}

	// 리그 점수등록 (ajax)
	@RequestMapping(value = "/manager/leagueMgn3", method = RequestMethod.POST)
	public ResponseEntity<List<LeagueVO>> selectlistInsert(@RequestBody List<LeagueVO> lists) throws Exception {
		logger.info("leagueMgn3");
		logger.info(lists.toString());

		// 승자 insert/update
		// 패자 update

		
		//lkVo.setLkName("A리그");
		LeagueVO vo1 = lists.get(0);
		LeagueVO vo2 = lists.get(1);
		LeagueVO vo3 = lists.get(2);
		LeagueKindVO lkVo = new LeagueKindVO();
		lkVo.setLkName(vo1.getlLeagueName().getLkName());
		// 잠시쓰는거 리그종류
		//vo1.setlLeagueName(lkVo);
		//vo2.setlLeagueName(lkVo);

		int score1 = vo1.getlGoal();
		int score2 = vo2.getlGoal();

		if (score1 > score2) { // 첫번째 팀이 승자
			// update
			vo1.setlAway(vo2.getlTeam().gettName()); // 상대팀 등록

			// insert
			LeagueVO insertVo = new LeagueVO();
			insertVo.setlRank(vo1.getlRank());
			insertVo.setlTeam(vo1.getlTeam());
			insertVo.setlLeagueName(vo1.getlLeagueName());
			insertVo.setlQuarterfinals(vo3.getlQuarterfinals());
			insertVo.setlSemifianl(vo3.getlSemifianl());
			insertVo.setlFinal(vo3.getlFinal());

			// update
			vo2.setlOut(1); // 패자팀 탈락여부
			vo2.setlAway(vo1.getlTeam().gettName()); // 상대팀 등록
			logger.info("패자패자패자" + vo2.toString());

			service.LeagueAfter(insertVo, vo1, vo2);

		} else { // 두번째 팀이 승자
					// update
			vo2.setlAway(vo1.getlTeam().gettName()); // 상대팀 등록
			// insert
			LeagueVO insertVo = new LeagueVO();
			insertVo.setlRank(vo2.getlRank());
			insertVo.setlTeam(vo2.getlTeam());
			insertVo.setlLeagueName(vo2.getlLeagueName());
			insertVo.setlQuarterfinals(vo3.getlQuarterfinals());
			insertVo.setlSemifianl(vo3.getlSemifianl());
			insertVo.setlFinal(vo3.getlFinal());

			// update
			vo1.setlOut(1); // 패자팀 탈락여부
			vo1.setlAway(vo2.getlTeam().gettName()); // 상대팀 등록

			service.LeagueAfter(insertVo, vo2, vo1);
		}

		ResponseEntity<List<LeagueVO>> entiy = null;
		try {
			List<LeagueVO> list = service.selectLeagueByLeagueKind(lkVo);
			entiy = new ResponseEntity<List<LeagueVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entiy = new ResponseEntity<List<LeagueVO>>(HttpStatus.BAD_REQUEST);
		}
		return entiy;
	}

}
