package com.feng.servlet;

import com.feng.dao.ProDao;
import com.feng.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/toupdateProServlet")
public class toupdateProServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProDao ch=new ProDao();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        try {
            String prodouctname=req.getParameter("prodouctname");
            Product u=new Product();
            u.setProdouctname(prodouctname);
            List<Product> list=ch.toUpdatepro(u);
            req.setAttribute("list", list);
            req.getRequestDispatcher("updatePro.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
