package getonFast.hj.semi.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import getonFast.hj.semi.member.service.MemberService;
import getonFast.hj.semi.member.vo.Member;

@WebServlet("/member/certify")
public class CertifyEmail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setAttribute("css", "style");

		String path = "/WEB-INF/views/member/certify.jsp";
		req.getRequestDispatcher(path).forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String certifyPwd = req.getParameter("certifyPwd");
		String certifyEmail = req.getParameter("email");
		Member member = new Member();
		
		member.setMemberEmail(certifyEmail);
		member.setMemberPw(certifyPwd);

		HttpSession session = req.getSession();

		Member loginMember = (Member) session.getAttribute("loginMember");
		
		HashMap<String, Integer> map = new HashMap();
		

		try {

			MemberService service = new MemberService();
			
			member = service.checkCertifyEmailPwd(member);
			
			

			
			if(member.getMemberEmail() != null) {
		
				
				int result = service.certifyEmail(certifyPwd, certifyEmail);
				
				System.out.println("result:: ==============");
				System.out.println(result);
				System.out.println("result::e ==============");
	
				if (result > 0) {
					map.put("result", 1);
					
					loginMember.setCertify(1);
					
				} else {
	
					map.put("result", 0);
				}
				
			}else {
				
				map.put("result", 2);
				
			}
			
			new Gson().toJson(map, resp.getWriter());

		} catch (Exception e) {

			e.printStackTrace();

			req.setAttribute("errorMessage", "오류 발생");
			req.setAttribute("e", e);

			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);

		}

	}

}
