package com.oracle.web.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.oracle.web.Service.MonsterService;
import com.oracle.web.bean.Monster;
import com.oracle.web.bean.SubMonster;
import com.oracle.web.bean.pageBean;
import com.oracle.web.mapper.MonsterMapper;

@Service
public class MonsterServiceimpl implements MonsterService {
   
	@Autowired
	private MonsterMapper monsterMapper;

	@Override
	@Transactional
	public List<SubMonster> list() {
		// TODO Auto-generated method stub
		return this.monsterMapper.selectAllWithOneSQL();
	}

	@Override
	@Transactional
	public int save(Monster monster) {
		// TODO Auto-generated method stub
		return this.monsterMapper.insert(monster);
	}

	@Override
	@Transactional
	public void delete(Monster monster) {
		// TODO Auto-generated method stub
		this.monsterMapper.deleteByPrimaryKey(monster.getMonsterid());
	}

	@Override
	@Transactional
	public Monster queryOne(Integer monsterId) {
		// TODO Auto-generated method stub
		
		return this.monsterMapper.selectByPrimaryKey(monsterId);
	}

	@Override
	@Transactional
	public void update(Monster monster) {
		// TODO Auto-generated method stub
		this.monsterMapper.updateByPrimaryKey(monster);
	}

	
/*
	@Override
	@Transactional
	public pageBean<Monster> showByPage(Integer pageNow, int pageSize) {
		// TODO Auto-generated method stub
		return this.monsterMapper.showByPage(pageNow, pageSize);
	}

*/

	
}
