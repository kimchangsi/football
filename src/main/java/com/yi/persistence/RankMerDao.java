package com.yi.persistence;

import java.util.List;

import com.yi.domain.RankMerVO;

public interface RankMerDao {
	public List<RankMerVO> selectByAll() throws Exception;
}
