package com.yi.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.yi.domain.CustomerVO;
import com.yi.domain.SearchCriteria;

public interface CustomerService {
	public List<CustomerVO> listAll() throws Exception;
	
	public void create(CustomerVO vo) throws Exception;
	
	public CustomerVO read(int nNo) throws Exception;
	
	public void update(CustomerVO vo) throws Exception;
	
	public void delete(int nNo) throws Exception;
	
	public void increaseViewcnt(int nNo, HttpSession session) throws Exception;
	
	public List<CustomerVO> listSearch(SearchCriteria cri) throws Exception;
}
