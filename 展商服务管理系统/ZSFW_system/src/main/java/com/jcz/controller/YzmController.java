package com.jcz.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YzmController {
	@RequestMapping("/yzm")
	public void service(ServletRequest request, ServletResponse response)
	throws ServletException, IOException {
		//  画布   三基色   red green blue
		//  创建一个内存印象  
		BufferedImage image=new BufferedImage(80,30,BufferedImage.TYPE_INT_BGR);
		//  获得画笔
		Graphics g=image.getGraphics();
		//  给画笔设置颜色
		g.setColor(new Color(255,255,255));
		//  设置背景颜色
		g.fillRect(0, 0, 80, 30);
		//  给笔设置颜色  重置
		Random r=new Random();
		g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
		//  给画笔设置字体
		g.setFont(new Font(null,Font.ITALIC,24));//  字体  风格  大小
		//  生成一个随机数
		char[] cc={'A','B','C','D','E','F','G','H','P','Q','1','2','3','4','5','6'};
		String number="";
		for(int i=0;i<5;i++){
			number+=String.valueOf(cc[r.nextInt(cc.length)]);
		}
		//  绘制图片
		g.drawString(number, 5, 26);// 矩形左下角的 距离顶点的距离
		//  加干扰线
		for(int i=0;i<8;i++){
		g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
		g.drawLine(r.nextInt(80),r.nextInt(30), r.nextInt(80),r.nextInt(30));
		}
		
		/**
		 * 加入到session中，我们保存验证
		 */
		HttpServletRequest req=(HttpServletRequest) request;
		HttpSession session=req.getSession();
		session.setAttribute("yzm", number);
		/**
		 * 2  压缩图片并输出
		 */
		//  告诉浏览器  返回的是一张图片
		response.setContentType("image/jpeg");
		//  要使用字节流 输出 
		OutputStream os=response.getOutputStream();
		//  压缩图片 并输出
		javax.imageio.ImageIO.write(image, "jpeg", os);
		os.close();
		}
}
