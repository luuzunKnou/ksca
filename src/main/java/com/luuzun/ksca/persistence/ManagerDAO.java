package com.luuzun.ksca.persistence;

import java.util.List;

import com.luuzun.ksca.domain.Manager;
import com.luuzun.ksca.domain.ManagerHasArea;

public interface ManagerDAO {
	public List<Manager> listAll() throws Exception;
	public Manager read(String id) throws Exception;
	public Manager readForLogin(String id, String password) throws Exception;
	public void create(Manager manager) throws Exception;
	public void update(Manager manager) throws Exception;
	public void delete(String id) throws Exception;
	public List<Manager> readWaitingManager();
	public void updateApproveManager(String id);
	public ManagerHasArea readManagerHasArea(String id);
	public void leave(String id);
	public void rejoin(String id);
}
