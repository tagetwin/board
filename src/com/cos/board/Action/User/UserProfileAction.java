package com.cos.board.Action.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.board.Action.Action;
import com.cos.board.Model.User;
import com.cos.board.dao.UserDao;
import com.cos.board.util.Script;

public class UserProfileAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dis = req.getRequestDispatcher("/user/profile.jsp");
		dis.forward(req, resp);	
		
//		if(req.getParameter("id")==null) {
//			Script.back(resp, "잘못된 접근입니다.");
//			return;
//		}
//		
//		int id = Integer.parseInt(req.getParameter("id"));
//		UserDao userDao = UserDao.getInstance();
//		User users = userDao.findById(id);
//		if(users!=null) {
//			req.setAttribute("userProfile", users);
//			RequestDispatcher dis = req.getRequestDispatcher("/user/profile.jsp");
//			dis.forward(req, resp);	
//		}else {
//			Script.back(resp, "회원정보 불러오기에 실패하였습니다.");
//		}
		
	}

}
