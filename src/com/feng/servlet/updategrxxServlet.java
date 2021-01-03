package com.feng.servlet;

import com.feng.dao.UserDao;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class updategrxxServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        User user = (User) req.getSession().getAttribute("user");
        UserDao userDao = new UserDao();
        try {

            String name = req.getParameter("name");
            String password = req.getParameter("password");
            String email = req.getParameter("email");
            String address = req.getParameter("address");
            String mobile = req.getParameter("mobile");

            user.setName(name);
            user.setPassword(password);
            user.setEmail(email);
            user.setAddress(address);
            user.setMobile(mobile);
            userDao.updategrxx(user);
            System.out.println(user);
            PrintWriter out = resp.getWriter();
            out.write("<script>");
            out.write("alert('修改成功！请重新登录！');");
            out.write("location.href='login.jsp';");
            out.write("</script>");
            out.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
