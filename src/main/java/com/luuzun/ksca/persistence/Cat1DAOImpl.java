package com.luuzun.ksca.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.luuzun.ksca.domain.Cat1;
import com.luuzun.ksca.domain.Cat1HasCat2;
import com.luuzun.ksca.utill.FieldToMapUtill;

@Repository
public class Cat1DAOImpl implements Cat1DAO{
	
	@Inject 
	private SqlSession sqlSession;
	private static final String namespace = "com.luuzun.ksca.persistence.Cat1DAO.";
	
	@Override
	public List<Cat1> listAll() throws Exception {
		return sqlSession.selectList(namespace+"listAll");
	}

	@Override
	public Cat1 read(String code) throws Exception {
		return sqlSession.selectOne(namespace+"read",code);
	}

	@Override
	public void create(Cat1 cat1) throws Exception {
		sqlSession.insert(namespace+"create", cat1);
	}

	@Override
	public void update(String destCode, Cat1 cat1) throws Exception {
		Map<String, String> param = new HashMap<>();
		param.put("destCode", destCode);
		param = FieldToMapUtill.getInstance().putAllField(param, cat1);
		
		sqlSession.update(namespace+"update", param);
	}

	@Override
	public void delete(String code) throws Exception {
		sqlSession.delete(namespace+"delete", code);
	}

	@Override
	public List<Cat1HasCat2> listCat1HasCat2() throws Exception {
		return sqlSession.selectList(namespace+"listCat1HasCat2");
	}
}
