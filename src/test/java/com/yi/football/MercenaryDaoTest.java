package com.yi.football;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.Criteria;
import com.yi.domain.MercenaryBoardVO;
import com.yi.domain.SearchCriteria;
import com.yi.persistence.MercenaryDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MercenaryDaoTest {
	@Autowired
	 MercenaryDao dao;
	
	
	@Test
	public void testListCriteria() throws Exception {
	SearchCriteria cri = new SearchCriteria();
		List<MercenaryBoardVO> list = dao.selectByall(cri);
		for(MercenaryBoardVO vo : list) {
			System.out.println(vo);
			
		}
	}
}
