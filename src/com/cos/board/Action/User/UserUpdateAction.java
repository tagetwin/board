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

public class UserUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		if(req.getParameter("email") == null || req.getParameter("address") == null) {
			Script.back(resp, "up잘못된 접근입니다.");
			return;
		}
		int id = Integer.parseInt(req.getParameter("id"));
		String email = req.getParameter("email");
		String address = req.getParameter("address");

		UserDao userDao = UserDao.getInstance();
		int result = userDao.update(email, address, id);
		
		if(result == 1) {
			System.out.println("회원정보수정 성공");
			RequestDispatcher dis = req.getRequestDispatcher("/");
			dis.forward(req, resp);
		}
		
	}

}
