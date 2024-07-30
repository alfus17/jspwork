package chun.univ.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.Session;

import java.io.IOException;

import chun.univ.dto.userInfo;
import chun.univ.dao.LoginDao;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userInfo userInfo = null;
		
		
		/* 사용자 요청 아이디 비밀번호를 받아와서 */
		String id  =  request.getParameter("login_id");
		String pwd = request.getParameter("login_pwd");
		
		 /* 로그 찍기 */
		System.out.println("loginServlet_request id :" + id);
		System.out.println("loginServlet_request pwd :" + pwd);
		
		/* 로그인다오에서 로그인 체크이후 userInfo 객체 전달 */
		userInfo = new LoginDao().checkLogIn(id,pwd);
		
		
		 /* 로그 찍기 */
		System.out.println("loginServlet_userInfo :" + userInfo);
		
		if(userInfo != null) {
			// mainHomePage.jsp 로 이동 하기
			response.sendRedirect("mainHomePage.jsp");
		}else {
			// 유저 정보가 있을경우 다시 로그인폼으로 이동
			
			response.getWriter().println("<script>alert('Invalid username or password'); location.href='loginForm.jsp';</script>");
			
		}
			
	
	}

}
