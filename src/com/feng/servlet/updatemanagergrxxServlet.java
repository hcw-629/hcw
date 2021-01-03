package com.feng.servlet;

import com.feng.dao.ManagerDao;
import com.feng.dao.UserDao;
import com.feng.entity.Manager;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class updatemanagergrxxServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        Manager user = (Manager) req.getSession().getAttribute("user");
        ManagerDao managerDao = new ManagerDao();
        try {

            String name = req.getParameter("name");
            int password = Integer.parseInt(req.getParameter("password"));

            user.setName(name);
            user.setPassword(password);
            managerDao.updatemanagergrxx(user);
            System.out.println(user);
            PrintWriter out = resp.getWriter();
            out.write("<script>");
            out.write("alert('修改成功！请重新登录');");
            out.write("location.href='managerlogin.jsp';");
            out.write("</script>");
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
