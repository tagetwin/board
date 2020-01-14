package com.cos.board.Action.User;

import com.cos.board.Action.Action;

public class UserFactory {

	public static Action route (String cmd) {
	System.out.println("UserFactory :" + cmd);
		if(cmd.equals("logout")) {
			return new UserLogoutAction();
		}else if(cmd.equals("login")) {
			return new UserLoginAction();
		}else if (cmd.equals("update")) {
			return new UserUpdateAction();
		}else if (cmd.equals("join")) {
			return new UserJoinAction();
		}else if (cmd.equals("joinProc")) {
			return new UserJoinProcAction();
		}else if (cmd.equals("loginProc")) {
			return new UserLoginProcAction();
		}
		
		return null;	
	}
	
}