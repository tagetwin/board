package com.cos.board.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Script {
	
	public static void back (HttpServletResponse resp, String msg) throws IOException {
		
		PrintWriter out = resp.getWriter();
		out.print("<script>");
		out.print("alert('"+msg+"');");
		out.print("history.back();");
		out.print("</script>");
		out.flush();
		
	}
}
