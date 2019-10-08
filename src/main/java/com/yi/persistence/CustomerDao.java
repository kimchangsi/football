package com.yi.persistence;

import java.util.List;

import com.yi.domain.CustomerVO;

public interface CustomerDao {
	 public List<CustomerVO> listAll() throws Exception;
	 
	 public void create(CustomerVO vo) throws Exception;
	 
	 public CustomerVO read(int nNo) throws Exception;
	 
	 public void update(CustomerVO vo) throws Exception;
	 
	 public void delete(int nNo) throws Exception;
	 
	 public void increaseViewcnt(int nNo) throws Exception;
	 
}
