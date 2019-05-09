package com.oracle.web.Controller;

import java.io.IOException;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.web.Service.AdminService;

import com.sun.org.apache.regexp.internal.recompile;

@Controller
@Scope(value="prototype")
public class BookHandler {
  
    
	private static final String NONE = null;
    
	@RequestMapping()
	public void add(){
		
		
	}
}
