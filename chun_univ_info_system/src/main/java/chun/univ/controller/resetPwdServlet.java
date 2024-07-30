package chun.univ.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

import java.io.IOException;

import chun.univ.dto.userInfo;
import chun.univ.dao.LoginDao;

public class resetPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		서버 세션에 저장된 userInfo 가져와서
		HttpSession session = request.getSession();
		userInfo userInfo = (userInfo)session.getAttribute("findPwdUserInfo");
		
		/* 재설정할 비밀번호 받아온후 체크  */
		String resetPwd  =  request.getParameter("resetPwd");
		String checkResetPwd = request.getParameter("checkResetPwd");
		boolean updateResult = false;
		
		if(!(resetPwd.equals(checkResetPwd))) {
			response.getWriter().println("<script>alert('사용자의 비밀번호가 틀립니다. 다시 입력해주세요'); location.href='findPwd.jsp';</script>");
		}else {
			updateResult = new LoginDao().UpdatePwd(userInfo,resetPwd);
			if(updateResult) {
				System.out.print("updateSuccess");
				response.getWriter().println("<script>alert('비밀번호 변경완료');  window.close();</script>");
			}else {
				System.out.print("updateFailed");
				response.getWriter().println("<script>alert('비밀번호 변경 실패'); location.href='findPwd.jsp';</script>");
			}
		}
		
	}

}
