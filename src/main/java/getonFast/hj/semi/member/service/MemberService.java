package getonFast.hj.semi.member.service;

import java.sql.Connection;


import static getonFast.hj.semi.common.JDBCTemplate.*;

import getonFast.hj.semi.member.dao.MemberDAO;
import getonFast.hj.semi.member.vo.Member;



public class MemberService {
	
	private MemberDAO dao = new MemberDAO();

	public int emailDupCheck(String inputEmail) throws Exception{
		
		Connection conn = getConnection();

		int result = dao.emailDupCheck(inputEmail, conn);

		close(conn);

		return result;
		
		
	}

	/** 회원가입 서비스
	 * @param member
	 * @return result
	 * @throws Exception
	 */
	public int signUp(Member member) throws Exception {
		
		Connection conn = getConnection();

		
		int result = dao.signUp(member, conn);

		
		if (result > 0)
			commit(conn);
		else
			rollback(conn);

		
		close(conn);

		return result;
	}

	/** 로그인 서비스
	 * @param memberEmail
	 * @param memberPw
	 * @return loginMember
	 * @throws Exception
	 */
	public Member login(String memberEmail, String memberPw) throws Exception{
		
		// 1) Connection 얻어오기
				Connection conn = getConnection();
				// DBCP에 생성 되어 있는 커넥션 객체 하나를 빌려오기

				// 2) DAO 메소드 호출해서 결과 반환 받기

				Member loginMember = dao.login(memberEmail, memberPw, conn);
				
				System.out.println(loginMember);

				// 3) 사용한 Connection 반환하기
				close(conn); // == conn.close();

				// 4) 결과반환

				return loginMember;
		
	}



}
