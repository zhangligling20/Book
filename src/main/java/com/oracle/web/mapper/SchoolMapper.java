package com.oracle.web.mapper;

import com.oracle.web.bean.School;
import java.util.List;

public interface SchoolMapper {
    int deleteByPrimaryKey(Integer schoolid);

    int insert(School record);

    School selectByPrimaryKey(Integer schoolid);
    School selectByPrimaryKey2(Integer schoolid);

    List<School> selectAll();

    int updateByPrimaryKey(School record);
}