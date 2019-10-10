package com.yi.persistence;

import java.util.List;

import com.yi.domain.MercenaryDetailVO;

public interface MercenaryDetailDao {
	public void insertMD(MercenaryDetailVO vo) throws Exception;
	public void deleteMD(MercenaryDetailVO vo) throws Exception;
	public void updateMD(MercenaryDetailVO vo) throws Exception;
	public List<MercenaryDetailVO> selectMDByIDNO(MercenaryDetailVO vo) throws Exception;
	public List<MercenaryDetailVO> selectMDByID(MercenaryDetailVO vo) throws Exception;
	public List<MercenaryDetailVO> selectMDByAll() throws Exception;
	public List<MercenaryDetailVO> selectMDByNo(MercenaryDetailVO vo) throws Exception;
	
}
