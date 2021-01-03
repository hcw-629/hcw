package com.feng.servlet;

import com.feng.dao.ManagerDao;
import com.feng.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ManagerNameCheck extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符集
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String name=request.getParameter("name");

        ManagerDao dao=new ManagerDao();
        int count=0;
        count=dao.selectByManagerName(name);

        PrintWriter out=response.getWriter();
        out.print(count);
        out.close();
    }
}
