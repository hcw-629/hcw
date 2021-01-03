package com.feng.servlet;

import com.feng.dao.ProDao;
import com.feng.dao.UserDao;
import com.feng.entity.Product;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class deleteProServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProDao uu=new ProDao();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        try {
            String prodouctname=req.getParameter("prodouctname");
            System.out.println(prodouctname);
            Product u=new Product();
            u.setProdouctname(prodouctname);
            System.out.println(u);
            uu.deletepro(u);
            PrintWriter out = resp.getWriter();
            out.write("<script>");
            out.write("alert('删除成功！');");
            out.write("location.href='Managerpro';");
            out.write("</script>");
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
