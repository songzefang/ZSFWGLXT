package com.jcz.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/upload")
public class UploadController {
	@RequestMapping("/home")
	public String go(){
		return "my/upload";
	}
	
	@RequestMapping("/uploadFile")
	public String uploadFile(@RequestParam  MultipartFile uploadFile, HttpServletRequest request){
		
		//得到项目的绝对路径
		String rootpath =  request.getServletContext().getRealPath("upload");
		System.out.println(rootpath);
		System.out.println("rootpath : " + rootpath);
		//把上传的文件写入指定路径
		if(uploadFile != null){
			//获取上传文件的名称
			String fileName = uploadFile.getOriginalFilename();
			//得到上传文件的扩展名
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			//为了防止上传同名文件，需要给上传文件重新命名
			String tempFileName = UUID.randomUUID().toString() + suffix;
			
			File fileTemp = new File(rootpath);
			if(!fileTemp.exists()){
				fileTemp.mkdir();  //创建文件夹
				System.out.println(rootpath);
			}
			File file = new File(rootpath + "\\" + tempFileName);
			//将文件写入指定 的路径
			try {
				uploadFile.transferTo(file);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("picture", "upload/" + tempFileName);
		}
		return "organiser/edit";
	}
	
	
	@RequestMapping("/uploadFileBatch")
	public String uploadFileBatch(@RequestParam  MultipartFile[] uploadFileBatch, HttpServletRequest request){
		
		//得到项目的绝对路径
		String rootpath = request.getServletContext().getRealPath("upload");
		System.out.println("rootpath : " + rootpath);
		
		Map<String, Object> mapPath = new HashMap<String, Object>();
		
		//把上传的文件写入指定路径
		if(uploadFileBatch != null && uploadFileBatch.length > 0){
			
			for(MultipartFile uploadFile : uploadFileBatch){
				if(uploadFile != null){
					//获取上传文件的名称
					String fileName = uploadFile.getOriginalFilename();
					//得到上传文件的扩展名
					String suffix = fileName.substring(fileName.lastIndexOf("."));
					//为了防止上传同名文件，需要给上传文件重新命名
					String tempFileName = UUID.randomUUID().toString() + suffix;
					
					File fileTemp = new File(rootpath);
					if(!fileTemp.exists()){
						fileTemp.mkdir();  //创建文件夹
					}
					File file = new File(rootpath + "\\" + tempFileName);
					//将文件写入指定 的路径
					try {
						uploadFile.transferTo(file);
					} catch (IllegalStateException | IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					mapPath.put(fileName, tempFileName);
				}
			}

			request.setAttribute("uploadMap", mapPath);
		}
		return "my/upload";
	}
	

}
