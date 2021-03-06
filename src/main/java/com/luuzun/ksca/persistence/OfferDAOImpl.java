package com.luuzun.ksca.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.luuzun.ksca.domain.Offer;

@Repository
public class OfferDAOImpl implements OfferDAO{
	
	@Inject //�ڵ� ����
	private SqlSession sqlSession;
	private static final String namespace = "com.luuzun.ksca.persistence.OfferDAO.";
	
	@Override
	public List<Offer> listAll() throws Exception {
		return sqlSession.selectList(namespace+"listAll");
	}

	@Override
	public Offer read(String code) throws Exception {
		return sqlSession.selectOne(namespace+"read",code);
	}

	@Override
	public Offer create(Offer offer) throws Exception {
		sqlSession.insert(namespace+"create", offer);
		return offer;
	}

	@Override
	public void update(Offer offer) throws Exception {
		sqlSession.update(namespace+"update", offer);
	}

	@Override
	public void delete(String code) throws Exception {
		sqlSession.delete(namespace+"delete", code);
	}

	@Override
	public List<Offer> readByAreaCode(String areaCode) {
		return sqlSession.selectList(namespace+"readByAreaCode",areaCode);
	}

	@Override
	public Offer readForExistCheck(String areaCode, String branchCode, String sccCode, 
			String program) {
		Map<String, String> param = new HashMap<>();
		param.put("areaCode", areaCode);
		param.put("branchCode", branchCode);
		param.put("sccCode", sccCode);
		param.put("program", program);
		
		return sqlSession.selectOne(namespace+"readForExistCheck",param);
	}

	@Override
	public void updateMonthlyOper(String offerCode, int monthlyOper) {
		Map<String, String> param = new HashMap<>();
		param.put("offerCode", offerCode);
		param.put("monthlyOper", String.valueOf(monthlyOper));
		
		sqlSession.update(namespace+"updateMonthlyOper", param);
	}

	@Override
	public List<Offer> readByRegMonth(String areaCode, String regMonth) {
		Map<String, String> param = new HashMap<>();
		param.put("areaCode", areaCode);
		param.put("regMonth", regMonth);
		
		return sqlSession.selectList(namespace+"readByRegMonth",param);
	}

}
