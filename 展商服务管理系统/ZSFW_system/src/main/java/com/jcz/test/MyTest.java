package com.jcz.test;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jcz.dao.BoothDao;
import com.jcz.dao.OrganiserDao;
import com.jcz.dao.UserDao;
import com.jcz.entity.Booth;
import com.jcz.entity.User;

public class MyTest {
	
	@Test
	public void test2(){
		ApplicationContext ac=
				new ClassPathXmlApplicationContext("applicationContext.xml");
			OrganiserDao od=ac.getBean("organiserDao",OrganiserDao.class);
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("account", "123456");
			map.put("orgpwd", "123456");
			System.out.println(od.loginOrganiser(map));
			
	}
	@Test
	public void test3(){
		ApplicationContext ac=
				new ClassPathXmlApplicationContext("applicationContext.xml");
			BoothDao bd=ac.getBean("boothDao",BoothDao.class);
			Booth b=new Booth();
			b.setBoothCode("A02");
			b.setOrgId(1);
			b.setPicture("no");
			b.setState(1);
			b.setStyle(1);
			b.setPrice(new BigDecimal(1000));
			b.setSize("200 X 200");
			bd.registerBooth(b);
			
			
			
	}
	@Test
	public void test4(){
		ApplicationContext ac=
				new ClassPathXmlApplicationContext("applicationContext.xml");
			BoothDao bd=ac.getBean("boothDao",BoothDao.class);
			int rows=5;
			for(Booth b :bd.listBooth(2,1*rows ) ){
				System.out.println(b);
			}
			
	}
	@Test
	public void test5(){
		ApplicationContext ac=
				new ClassPathXmlApplicationContext("applicationContext.xml");
			BoothDao bd=ac.getBean("boothDao",BoothDao.class);
			Booth b=new Booth();
			b.setId(3);
			b.setPicture("暂无图片");
			b.setSize("300 X 300");
			b.setStyle(0);
			b.setPrice(new BigDecimal(3000));
			bd.update(b);
			
	}
}
