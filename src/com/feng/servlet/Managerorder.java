package com.feng.servlet;

import com.feng.dao.CartDao;
import com.feng.entity.Cart;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet("/Managerorder")
public class Managerorder extends HttpServlet {
    private int currentPage=1;
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        CartDao u=new CartDao();

        try {
            //查询总数
            int all=u.getCount();
            //查询总页数
            int allPage=all%3==0?all/3:(all/3+1);
            req.setAttribute("allPage", allPage);
            //获取当前页
            String obj=req.getParameter("currentPage");
            if(obj!=null){
                currentPage=Integer.parseInt(obj);
            }
            req.setAttribute("currentPage",currentPage);
            //展示所有数据
            List<Cart> list=u.getcartAll(currentPage);

            req.setAttribute("list", list);
            req.getRequestDispatcher("managerorder.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

