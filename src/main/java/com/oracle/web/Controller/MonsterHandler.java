package com.oracle.web.Controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.web.Service.AdminService;
import com.oracle.web.Service.MonsterService;
import com.oracle.web.Service.SchoolService;
import com.oracle.web.bean.Monster;

import com.oracle.web.bean.School;
import com.oracle.web.bean.SubMonster;
import com.oracle.web.bean.pageBean;

@Controller
@Scope(value = "prototype")
public class MonsterHandler {

	@Autowired
	private MonsterService monsterService;
	@Autowired
	private SchoolService schoolService;

	@Autowired
	AdminService adminService;
	// private School school;
	private Integer pageNow;

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPageNow() {
		return pageNow;
	}

	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}

	private Monster monster;

	public Monster getMonster() {
		return monster;
	}

	public void setMonster(Monster monster) {
		this.monster = monster;
	}

	private Map<String, Object> request;

	@RequestMapping(value = "/monsters", method = RequestMethod.GET)
	public String monster(HttpServletRequest request) {// 全查

		List<SubMonster> mlist = this.monsterService.list();

		System.out.println(mlist);

		request.setAttribute("mlist", mlist);

		return "list";
	}

	@RequestMapping(value = "/addUI", method = RequestMethod.GET)
	public String addUI(HttpServletRequest request) {

		List<School> slist = this.schoolService.list();
		request.setAttribute("slist", slist);

		return "add";
	}

	@RequestMapping(value = "/monster1", method = RequestMethod.POST)
	public String add(Monster monster) {// 添加

		System.out.println(monster);

		int i = monsterService.save(monster);
		System.out.println(i);

		return "redirect:/monsters";
	}

	@RequestMapping(value = "/monster/{monsterId}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("monsterId") Integer id) {
		Monster monster = new Monster();

		monster.setMonsterid(id);

		this.monsterService.delete(monster);

		return "redirect:/monsters";
	}

	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	@RequestMapping(value = "/monster/{monsterid}", method = RequestMethod.GET)
	public String updateUI(@PathVariable(value = "monsterid") Integer id, HttpSession session) {

		List<School> slist = this.schoolService.list();

		session.setAttribute("slist", slist);

		Monster m = this.monsterService.queryOne(id);

		session.setAttribute("m", m);

		return "redirect:/update.jsp";
	}

	@RequestMapping(value = "/monster", method = RequestMethod.PUT)
	public String update(Monster monster) {

		monsterService.update(monster);

		return "redirect:/monsters";
	}

	@RequestMapping(value = "/showByPage", method = RequestMethod.GET)
	public String showByPage( Integer pageNow, HttpServletRequest request) {

      //  int pageSize = 2;
		
		if(pageNow==null){
			
			pageNow=1;
		}
		
		pageBean<SubMonster> pb=this.monsterService.showByPage(pageNow);
		
		request.setAttribute("pb", pb);
		
		return "list";
	}

}
