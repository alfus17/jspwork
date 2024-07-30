package chun.univ.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import chun.univ.dto.userInfo;
import chun.univ.dao.LoginDao;

public class findPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userInfo userInfo = null;
		
		/* 사용자 요청 아이디 비밀번호를 받아와서 */
		String id  =  request.getParameter("loginId");
		String name = request.getParameter("findStudentName");
		
		 /* 로그 찍기 */
		System.out.println("loginServlet_request loginId :" + id);
		System.out.println("loginServlet_request findStudentName :" + name);
		
		/* 로그인다오에서 유저가 있는지 조회 */
		userInfo = new LoginDao().findPwd(id,name);	
		System.out.println("findPwdServlet_userInfo : "+userInfo);
		if(userInfo !=null) {
			System.out.println("else_findPwdServlet_userInfo : "+userInfo);
			HttpSession session = request.getSession();
			session.setAttribute("findPwdUserInfo", userInfo);
			response.sendRedirect("findPwd.jsp");	
		}else {
			response.getWriter().println("<script>alert('사용자의 정보가 없습니다.'); location.href='findPwd.jsp';</script>");
		}
	
	}

}
