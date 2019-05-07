package com.oracle.web.Service;

import java.util.List;

import com.oracle.web.bean.Monster;
import com.oracle.web.bean.SubMonster;
//import com.oracle.web.bean.PageBean;
import com.oracle.web.bean.pageBean;

public interface MonsterService {

	List<SubMonster> list();

	int save(Monster monster);

	void delete(Monster monster);

	Monster queryOne(Integer monsterId);

	void update(Monster monster);

	
	 // List<SubMonster> selectAllWithOneSQL();
	

	//pageBean<Monster> showByPage(Integer pageNow, int pageSize);



}
