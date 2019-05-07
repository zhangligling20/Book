package com.oracle.web.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.web.Service.SchoolService;
import com.oracle.web.bean.School;
import com.oracle.web.mapper.SchoolMapper;
@Service
public class SchoolServiceimpl implements SchoolService {
  @Autowired
	private SchoolMapper schoolMapper;

@Override
@Transactional(readOnly=true)
public List<School> list() {
	// TODO Auto-generated method stub
	return this.schoolMapper.selectAll();
}
}
