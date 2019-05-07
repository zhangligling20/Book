package com.oracle.web.bean;

public class SubMonster extends Monster{

	
	@Override
	public String toString() {
		return "SubMonster [school1=" + school1 + "]";
	}

	private School school1;

	public School getSchool1() {
		return school1;
	}

	public void setSchool1(School school1) {
		this.school1 = school1;
	}
	
	
}
