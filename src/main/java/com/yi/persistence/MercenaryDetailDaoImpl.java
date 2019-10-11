package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.MercenaryDetailVO;
@Repository
public class MercenaryDetailDaoImpl implements MercenaryDetailDao {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.mercenaryDetailMapper";
	
	@Override
	public void insertMD(MercenaryDetailVO vo) throws Exception {
		System.out.println(vo.toString());
		sqlSession.insert(namespace + ".insertMD",vo);
	}

	@Override
	public void deleteMD(MercenaryDetailVO vo) throws Exception {
		sqlSession.delete(namespace + ".deleteMD",vo);
	}

	@Override
	public void updateMD(MercenaryDetailVO vo) throws Exception {
		sqlSession.update(namespace + ".updateMD",vo);
	}

	@Override
	public List<MercenaryDetailVO> selectMDByID(MercenaryDetailVO vo) throws Exception {
		return sqlSession.selectList(namespace + ".selectMDByID",vo) ;
	}

	@Override
	public List<MercenaryDetailVO> selectMDByIDNO(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectMDByIDNO",vo) ;
	}

	@Override
	public List<MercenaryDetailVO> selectMDByAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectMDByAll") ;
	}

	@Override
	public List<MercenaryDetailVO> selectMDByNo(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectMDByNo",vo) ;
	}

}
