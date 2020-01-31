package com.cos.board.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test")
public class UserControllerTest extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		User user = t4.findById();
//		System.out.println("id :" + user.getId());
//		System.out.println("username :" + user.getUsername());
//		System.out.println("password :" + user.getPassword());
//		System.out.println("email :" + user.getEmail());
//		System.out.println("createTime :" + user.getCreateTime());
//		System.out.println();
		
	}
}
