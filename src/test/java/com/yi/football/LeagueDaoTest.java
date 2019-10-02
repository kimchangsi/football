package com.yi.football;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.LeagueKindVO;
import com.yi.persistence.LeagueKindDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class LeagueDaoTest {
	@Autowired
	LeagueKindDao dao;

	@Test
	public void testSelectList() throws Exception {
		List<LeagueKindVO> list = dao.selectLeagueKindByAll();
		for (LeagueKindVO vo : list) {
			System.out.println(vo);
		}
	}

}
