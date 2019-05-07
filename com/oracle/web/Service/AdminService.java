package com.oracle.web.Service;

import java.util.List;

import com.oracle.web.bean.Admin;
import com.oracle.web.bean.Monster;

public interface AdminService {

	int save(Admin admin);

	List<Admin> list();
	
	Admin validateName(String adminName);

	Admin login2(Admin admin);

	//Admin login2(String admin);

	
	




	

	

	
	


}
