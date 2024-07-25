package ajax01;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class AjaxServletController2
 */
public class AjaxServletController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		String age = request.getParameter("age");

		
		// DB에서 요청처리를 다 했다는 가정하에 응답할 데이터
		String responseDate = "이름 : " + name + " , 나이 : "+ age;
		System.out.println("요청시 전달한 값 : " + responseDate);
		
		// 응답데이터 돌려주기
		
		response.setContentType("text/html; charset=utf-8");
	
	
	}

}
