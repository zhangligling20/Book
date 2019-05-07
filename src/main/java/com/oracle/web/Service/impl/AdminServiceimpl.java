package com.oracle.web.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.web.Service.AdminService;
import com.oracle.web.bean.Admin;
import com.oracle.web.mapper.AdminMapper;
@Service
public class AdminServiceimpl implements AdminService {
    @Autowired
	private AdminMapper adminMapper;

	@Override
	@Transactional
	public int save(Admin admin) {
		// TODO Auto-generated method stub
		return  this.adminMapper.insert(admin);
	}

	@Override
	@Transactional(readOnly=true)
	public List<Admin> list() {
		// TODO Auto-generated method stub
		return this.adminMapper.selectAll();
	}

	

	@Override
	@Transactional
	public Admin validateName(String adminname) {
		// TODO Auto-generated method stub
		return this.adminMapper.validateName(adminname);
	}

	@Override
	@Transactional
	public Admin login2(Admin admin) {
		// TODO Auto-generated method stub
     return  this.adminMapper.login2(admin);
	}


	
	

	
	
	
	
}
