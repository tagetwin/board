package com.cos.board.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.board.Action.Action;
import com.cos.board.Action.Board.BoardFactory;
import com.cos.board.DB.DBUtil;
import com.cos.board.Model.User;

@WebServlet("/test")
public class UserControllerTest extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//DB 테스트
		UserDaoTest t4 = new UserDaoTest();

//		int result = t4.save();
//		System.out.println("result : " + result);
		
//		int result = t4.update();
//		System.out.println("result : " + result);
		
//		int result = t4.delete();
//		System.out.println("result : " + result);
		
//		List<User> users = t4.findAll();
//		for(User user : users) { //forEach문
//			System.out.println("id :" + user.getId());
//			System.out.println("username :" + user.getUsername());
//			System.out.println("password :" + user.getPassword());
//			System.out.println("email :" + user.getEmail());
//			System.out.println("createTime :" + user.getCreateTime());
//			System.out.println();
//		}
//		
		User user = t4.findById();
		System.out.println("id :" + user.getId());
		System.out.println("username :" + user.getUsername());
		System.out.println("password :" + user.getPassword());
		System.out.println("email :" + user.getEmail());
		System.out.println("createTime :" + user.getCreateTime());
		System.out.println();
		
	}
}
