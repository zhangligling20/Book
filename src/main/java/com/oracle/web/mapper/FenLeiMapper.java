package com.oracle.web.mapper;

import com.oracle.web.bean.FenLei;
import java.util.List;

public interface FenLeiMapper {
    int deleteByPrimaryKey(Integer fenleiid);

    int insert(FenLei record);

    FenLei selectByPrimaryKey(Integer fenleiid);

    List<FenLei> selectAll();

    int updateByPrimaryKey(FenLei record);
}