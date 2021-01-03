package com.feng.servlet;

import com.feng.dao.CartDao;
import com.feng.dao.UserDao;
import com.feng.entity.Cart;
import com.feng.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class CartPay extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        User user = (User) request.getSession().getAttribute("user");

        UserDao userDao = new UserDao();


        String eids = request.getParameter("eids");
        int totalprice = 0;
        String ids[] = eids.split(",");

        for (int i = 0; i < ids.length; i++) {
            CartDao cartDao = new CartDao();
            Cart es = cartDao.getCartShop(ids[i]);
            int dprice = es.getCart_p_price() * es.getCart_nums();
            totalprice += dprice;

            User user1 = userDao.selectuser(user.getId().toString());
            if (user1.getBalance() - totalprice >= 0) {
                try {
                    cartDao.updateBycartid(Integer.parseInt(ids[i]));
                    userDao.updateBalance(user.getId(), user1.getBalance() - totalprice);
                    request.setAttribute("totalprice", totalprice);
                    request.setAttribute("eids", eids);
                    request.getRequestDispatcher("ok.jsp").forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                PrintWriter out = response.getWriter();
                out.write("<script>");
                out.write("alert('余额不足，无法购买');");
                out.write("location.href='showcart';");
                out.write("</script>");
                out.close();
                return;

            }
        }
    }
}