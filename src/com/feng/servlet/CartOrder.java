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
import java.util.ArrayList;
import java.util.List;

public class CartOrder extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");


        String eids = request.getParameter("eids");
        int totalprice = 0;
        String ids[] = eids.split(",");
        ArrayList<Cart> list = new ArrayList<>();
        CartDao cartDao = new CartDao();

        for (int i = 0; i < ids.length; i++) {
            Cart es = cartDao.getCartShop(ids[i]);
            int dprice = es.getCart_p_price() * es.getCart_nums();
            totalprice += dprice;
            list.add(es);
        }
        request.setAttribute("shoplist", list);
        request.setAttribute("totalprice", totalprice);
        request.setAttribute("eids", eids);
        request.getRequestDispatcher("order.jsp").forward(request, response);

    }
}








