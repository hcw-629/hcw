package com.feng.servlet;

import com.feng.dao.ProDao;
import com.feng.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/updateProServlet")
public class updateProServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        ProDao up=new ProDao();
        try {
            String prodouctname = req.getParameter("prodouctname");
            int prodouctprice = Integer.parseInt(req.getParameter("prodouctprice"));
            int prodouctstock = Integer.parseInt(req.getParameter("prodouctstock"));
            Product u=new Product();
            u.setProdouctname(prodouctname);
            u.setProdouctprice(prodouctprice);
            u.setProdouctstock(prodouctstock);
            up.updatepro(u);
            System.out.println(u);
            PrintWriter out = resp.getWriter();
            out.write("<script>");
            out.write("alert('修改成功！');");
            out.write("location.href='Managerpro';");
            out.write("</script>");
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
