package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.CustomerVO;
import com.yi.domain.SearchCriteria;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.customerMapper";

	@Override
	public List<CustomerVO> listAll() throws Exception {
		return sqlSession.selectList(namespace + ".listAll");
	}

	@Override
	public void create(CustomerVO vo) throws Exception {
		sqlSession.insert(namespace + ".create", vo);
	}

	@Override
	public CustomerVO read(int nNo) throws Exception {
		return sqlSession.selectOne(namespace + ".view", nNo);
	}

	@Override
	public void update(CustomerVO vo) throws Exception {
		sqlSession.update(namespace + ".updateArticle", vo);
	}

	@Override
	public void delete(int nNo) throws Exception {
		sqlSession.delete(namespace+".Ndelete", nNo);
	}

	@Override
	public void increaseViewcnt(int nNo) throws Exception {
		sqlSession.update(namespace+".increaseViewcnt", nNo);
	}

	@Override
	public List<CustomerVO> listSearch(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(namespace+".listSearchCount",cri);
	}

	

}
