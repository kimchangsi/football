package com.yi.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.CustomerVO;
import com.yi.persistence.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerDao dao;

	@Override
	public List<CustomerVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public void create(CustomerVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public CustomerVO read(int nNo) throws Exception {
		return dao.read(nNo);
	}

	@Override
	public void update(CustomerVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int nNo) throws Exception {
		dao.delete(nNo);
	}

	@Override
	public void increaseViewcnt(int nNo, HttpSession session) throws Exception {
		long update_time = 0;
        // 세션에 저장된 조회시간 검색
        // 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
        if(session.getAttribute("update_time_"+nNo) != null){
                                // 세션에서 읽어오기
            update_time = (long)session.getAttribute("update_time_"+nNo);
        }
        // 시스템의 현재시간을 current_time에 저장
        long current_time = System.currentTimeMillis();
        // 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
        // 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
        if(current_time - update_time > 5*1000){
            dao.increaseViewcnt(nNo);
            // 세션에 시간을 저장 : "update_time_"+bno는 다른변수와 중복되지 않게 명명한 것
            session.setAttribute("update_time_"+nNo, current_time);
	}
	}
}
