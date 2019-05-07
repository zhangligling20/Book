package com.oracle.web.mapper;


import java.util.List;

import com.oracle.web.bean.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer aid);

    int insert(Admin record);

    Admin selectByPrimaryKey(Integer aid);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);

	Admin validateName(String adminname);

	Admin login2(Admin admin);
}