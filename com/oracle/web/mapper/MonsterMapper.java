package com.oracle.web.mapper;

import com.oracle.web.bean.Monster;
import com.oracle.web.bean.SubMonster;
import com.oracle.web.bean.pageBean;

import java.util.List;

public interface MonsterMapper {
    int deleteByPrimaryKey(Integer monsterid);

    int insert(Monster record);

    Monster selectByPrimaryKey(Integer monsterid);

    List<SubMonster> selectAll();
    
    List<SubMonster> selectAllWithOneSQL();

    int updateByPrimaryKey(Monster record);

	//pageBean<Monster> showByPage(Integer pageNow, int pageSize);
}