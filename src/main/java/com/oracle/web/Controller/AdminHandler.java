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
import com.oracle.web.bean.Admin;
import com.oracle.web.bean.Monster;
import com.oracle.web.bean.School;
import com.sun.org.apache.regexp.internal.recompile;

@Controller
@Scope(value="prototype")
public class AdminHandler {
  
    
	private static final String NONE = null;
	@Autowired 
	private AdminService adminService;
	//private School school;
	private Admin admin;
  
	private Integer aId;
	
	
	private String password;
	

	public Integer getaId() {
		return aId;
	}

	public void setaId(Integer aId) {
		this.aId = aId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getAdminName() {
		return adminName;
	}
	
	private String adminName;
	
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	private Map<String, Object> request;
	
	@RequestMapping(value="/register1",method=RequestMethod.POST)
	public String register(Admin admin){
	
		//admin.setAdminName(adminName);
		//System.out.println(adminName);
		
		int i=this.adminService.save(admin);
		//System.out.println(i);
		if(i>0){
				System.out.println("成功");
			return "redirect:/login.jsp";	
		}else{
			return "redirect:/register.jsp";
		}
		
	}
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String list(HttpServletRequest request){
		
	List<Admin> alist=this.adminService.list();
	
	//System.out.println(mlist);
	
	request.setAttribute("alist", alist);
	
	return "adminList";
	
	}
	

 @RequestMapping(value="validateadminName.action")
 @ResponseBody
  public String validateadminName(String adminname,HttpServletResponse response) throws IOException  {
	
	  System.out.println(adminname);
	  //admin.setAdminName(adminName);
    Admin a=this.adminService.validateName(adminname);
      System.out.println(a);
   
    //  HttpServletResponse response=ServletActionContext.getResponse();
    
    response.setContentType("text/html;charset=UTF-8");
    
	   if(a!=null){
			
			response.getWriter().write("{\"valid\":\"false\"}");//不存在
			
		//return "redirect:/register.jsp";
		
	}else{
			
			response.getWriter().write("{\"valid\":\"true\"}");//存在
			
			//  return "redirect:/list";
		}
	return NONE;
  }
	@RequestMapping(value="/login",method=RequestMethod.POST)
   public String login(Admin admin){

	 Admin admin1=this.adminService.login2(admin);
	
		 if(admin1==null){
			 return "redirect:/login.jsp";
			
      }
		 if(!admin1.getPassword().equals(admin.getPassword())){
			 
			 return "redirect:/login.jsp";
      }
		 return "redirect:/list";
  }
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;
	}

	
	
}
