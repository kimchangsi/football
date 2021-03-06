package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ReservationVO;
@Repository
public class ReservationDaoImpl implements ReservationDao {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.reservationMapper";

	@Override
	public List<ReservationVO> selectByrGnoRtime(int rGno, String rTime) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rGno", rGno);
		map.put("rTime", rTime);
		return sqlSession.selectList(namespace + ".selectByrGnoRtime", map);
	}

	@Override
	public void insertReservation(ReservationVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertReservation",vo);
	}

	@Override
	public List<ReservationVO> selecyByID(String mId) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace +".selecyByID",mId);
	}

	@Override
	public void updateReservation(ReservationVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".updateReservation",vo);
	}

}
