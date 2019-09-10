package com.yi.football;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class) //스프링junit사용하게삳
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"}) //설정파일 위치 설정
public class MybatisTest {
	
	@Autowired
	private SqlSessionFactory ss;
	
	@Test
	public void testFactory() {
		System.out.println(ss);
	}
	
	@Test
	public void testSession() {
		try(SqlSession session = ss.openSession()){
			System.out.println(session);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
