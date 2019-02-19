package com.luuzun.ksca.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.luuzun.ksca.domain.OfferProgram;
import com.luuzun.ksca.domain.OfferProgramJoinForList;

@Repository
public class OfferProgramDAOImpl implements OfferProgramDAO{
	
	@Inject //�ڵ� ����
	private SqlSession sqlSession;
	private static final String namespace = "com.luuzun.ksca.persistence.OfferProgramDAO.";
	
	@Override
	public OfferProgram read(String code) throws Exception {
		return sqlSession.selectOne(namespace+"read",code);
	}

	@Override
	public String create(OfferProgram OfferProgram) throws Exception {
		sqlSession.insert(namespace+"create", OfferProgram);
		return OfferProgram.getCode();
	}

	@Override
	public void update(OfferProgram OfferProgram) throws Exception {
		sqlSession.update(namespace+"update", OfferProgram);
	}

	@Override
	public void delete(String code) throws Exception {
		sqlSession.delete(namespace+"delete", code);
	}

	@Override
	public List<OfferProgramJoinForList> readOfferProgramJoinForList(String areaCode, String regMonth) {
		Map<String, String> param = new HashMap<>();
		param.put("areaCode", areaCode);
		param.put("regMonth", regMonth);

		return sqlSession.selectList(namespace+"readOfferProgramJoinForList",param);
	}
}
