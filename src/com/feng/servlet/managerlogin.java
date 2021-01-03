package com.feng.servlet;

import com.feng.dao.CartDao;
import com.feng.dao.ManagerDao;
import com.feng.dao.UserDao;
import com.feng.entity.Manager;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class managerlogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        String pwd = request.getParameter("password");

        //查询数据库的用户表
        ManagerDao dao = new ManagerDao();
        int count = dao.selectByIdPwd(name, pwd);

        CartDao cdao=new CartDao();
        int ccount= 0;
        try {
            ccount = cdao.getMoney();
        } catch (Exception e) {
            e.printStackTrace();
        }


        if (count > 0) {

            //用session来管理用户会话登录
            HttpSession session = request.getSession();
            //获取用户信息，保存在session中
            Manager user = dao.selectmanager(name);
            System.out.println(user);
            session.setAttribute("user", user);
            session.setAttribute("isLogin", "1");
            session.setAttribute("ManagerCountPrice", ccount);
            //重定向
            response.sendRedirect("manager.jsp");

        } else {
            PrintWriter out = response.getWriter();
            out.write("<script type=\"text/javascript\">");
            out.write("alert('用户登录失败！请重新登录');");
            out.write("location.href='managerlogin.jsp';");
            out.write("</script>");
            out.close();
        }
    }

    }
