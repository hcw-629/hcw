package com.feng.servlet;

import com.feng.entity.Product;
import com.feng.util.JdbcUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
@WebServlet("/addProServlet")
public class addProServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        try {
            Product u=new Product();
            JdbcUtil util = new JdbcUtil();
            String sql="insert into product(prodouctname,prodouctprice,prodouctstock) value(?,?,?)";
            PreparedStatement pst = util.getPs(sql);
            String prodouctname = req.getParameter("prodouctname");
            int prodouctprice=Integer.parseInt(req.getParameter("prodouctprice"));
            int prodouctstock=Integer.parseInt(req.getParameter("prodouctstock"));
            pst.setString(1, prodouctname);
            pst.setInt(2, prodouctprice);
            pst.setInt(3, prodouctstock);
            pst.executeUpdate();
            util.close();
            PrintWriter out = resp.getWriter();
            out.write("<script>");
            out.write("alert(' 添加成功！');");
            out.write("location.href='Managerpro';");
            out.write("</script>");
            out.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
