package com.mvc.member.controller;

import com.mvc.member.model.dto.MemberDTO;
import com.mvc.member.model.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/member/insert")
public class InsertMemberServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");


        String memberName = request.getParameter("memberName");
        String launchDate = request.getParameter("launchDate");
        String divisionCode = request.getParameter("divisionCode");
        String detailInfo = request.getParameter("detailInfo");
        String studentQuantity = request.getParameter("studentQuantity");
        String contact = request.getParameter("contact");
        String teamCode = request.getParameter("teamCode");
        String activeStatus = request.getParameter("activeStatus");

        MemberService memberService = new MemberService();

        MemberDTO member = new MemberDTO();
        member.setMemberName(memberName);
        member.setLaunchDate(launchDate);
        member.setDivisionCode(divisionCode);
        member.setDetailInfo(detailInfo);
        member.setStudentQuantity(studentQuantity);
        member.setContact(contact);
        member.setTeamCode(teamCode);
        member.setActiveStatus(activeStatus);

        System.out.println("insert request member : " + member);

        boolean isSuccess = memberService.insertMember(member);

        PrintWriter out = response.getWriter();
        if (isSuccess) {
            out.print("{\"result\":\"success\",\"message\":\"insertMember\"}");
        } else {
            out.print("{\"result\":\"fail\",\"message\":\"신규 회원 등록에 실패하셨습니다.\"}");
        }
        out.flush();
    }
}
