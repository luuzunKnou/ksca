package com.luuzun.ksca.persistence;

import java.util.List;

import com.luuzun.ksca.domain.Cat2;
import com.luuzun.ksca.domain.Program;
import com.luuzun.ksca.domain.ProgramJoinForList;

public interface ProgramDAO {
	public List<Program> listAll() throws Exception;
	public Program read(String code) throws Exception;
	public String create(Program program) throws Exception;
	public void update(Program program) throws Exception;
	public void delete(String code) throws Exception;
	public List<Program> readByAreaCode(String areaCode);
	
	public List<ProgramJoinForList> readProgramJoinForList(String areaCode);
	public ProgramJoinForList readProgramJoinByCode(String code);
	public List<Cat2> readByCat2(Cat2 cat2);
}
