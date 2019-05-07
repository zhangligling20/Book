package com.oracle.web.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
	public pageBean<SubMonster> showByPage(int pageNow, int pageSize) {
		// TODO Auto-generated method stub
		pageBean<SubMonster> pb = new pageBean<SubMonster>();

		pb.setPageNow(pageNow);

		pb.setpageSize(pageSize);

		// 查看有多少条
		int sum = monsterMapper.count();
		pb.setCounts(sum);

		// 从第几条开始
		int index = (pageNow - 1) * pageSize;

		List<SubMonster> list = this.monsterMapper.showByPage(index);

		pb.setBeanList(list);

		return pb;
	}
*/
	@Override
	public Integer count() {
		// TODO Auto-generated method stub
		return this.monsterMapper.count();
	}

	@Override
	public pageBean<SubMonster> showByPage(Integer pageNow) {
		// TODO Auto-generated method stub
		pageBean<SubMonster> pb = new pageBean<SubMonster>();

		
		PageHelper.startPage(pageNow, 2);
		
		List<SubMonster> list = this.monsterMapper.showByPageHelper();
		
		pb.setBeanList(list);
		
		//总记录数
		
		PageInfo<SubMonster> pi=new PageInfo<SubMonster>(list);
		
		//pb
		pb.setCounts((int) pi.getTotal());
		
		//当前页
		pb.setPageNow(pi.getPageNum());
		
		//每页显示的条数 自定义
		pb.setpageSize(pi.getPageSize());
		
		
		
		
		return pb;
	}

}
