package com.oracle.web.test;



import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.oracle.web.bean.Book;
import com.oracle.web.mapper.BookMapper;

public class testMybatis {

	private SqlSession session;

	private BookMapper bookmapper ;
   
	@Before
	public void init() throws IOException {

		InputStream inputStream = Resources.getResourceAsStream("Mybatis-config.xml");

		// 2.创建会话工厂

		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		// 3.开启sqlsession
		session = sqlSessionFactory.openSession();
		
		//4.获取接口
		
	   bookmapper = session.getMapper(BookMapper.class);
	

	}
	@Test
	
	public void testAdd(){
		Book book=new Book(null, "要哦鬼怪", "三生三世","55.3", "北京文化", "借出","lili", 1);
		int i = bookmapper.insert(book);
		if(i>0){
			
			System.out.println("添加成功");
			
		}else{
			
			System.out.println("失败");
		}
	}
	@After
	public void destory() {

		// 6.关闭事务
		session.commit();

		session.close();

	}

}
