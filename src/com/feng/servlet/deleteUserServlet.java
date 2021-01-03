package com.feng.servlet;

import com.feng.dao.UserDao;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao uu=new UserDao();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        try {
            String id=req.getParameter("id");
            System.out.println(id);
            User u=new User();
            u.setId(id);
            uu.deleteuser(u);
            PrintWriter out = resp.getWriter();
            out.write("<script>");
            out.write("alert('删除成功！');");
            out.write("location.href='Manageruser';");
            out.write("</script>");
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
