package com.cos.board.Action.Board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.board.Action.Action;
import com.cos.board.Model.Board;
import com.cos.board.dao.BoardDao;
import com.cos.board.util.Script;

public class BoardDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		if
		(
			req.getParameter("id") == null ||
			req.getParameter("id").equals("")
		) {
			Script.back(resp, "잘못된 접근입니다");
			return;
		}
		
		int id = Integer.parseInt(req.getParameter("id"));
		BoardDao boardDao = BoardDao.getInstance();
		Board board = boardDao.findById(id);
		
		System.out.println("DetailAction:"+board.getId());
		if(board != null) {
			req.setAttribute("board", board);
			RequestDispatcher dis = req.getRequestDispatcher("/board/detail.jsp");
			dis.forward(req, resp);
		}
		Script.back(resp, "글이 존재하지 않습니다");
	}

}
