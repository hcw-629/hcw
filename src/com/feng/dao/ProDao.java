package com.feng.dao;

import com.feng.entity.Product;
import com.feng.entity.User;
import com.feng.util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProDao {
    public Product selectById(String pid){
        int id=Integer.parseInt(pid);
        JdbcUtil util=new JdbcUtil();
        String sql="select * from product where prodouctid=?";
        PreparedStatement ps=util.getPs(sql);
        ResultSet rs=null;
        Product pro=new Product();
        try {
            ps.setInt(1,id);
            rs=ps.executeQuery();
            if(rs.next()){
                pro.setProdouctid(rs.getInt(1));
                pro.setProdouctname(rs.getString(2));
                pro.setProdouctdescription(rs.getString(3));
                pro.setProdouctprice(rs.getInt(4));
                pro.setProdouctstock(rs.getInt(5));
                pro.setProdouctfilename(rs.getString(6));
                //Product pro=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getString(6));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close();
            util.close(ps,rs);
        }
        return pro;
    }

    public List<Product> getAllpro(int currentPage) throws Exception{
        List<Product> list=new ArrayList<>();
        JdbcUtil util = new JdbcUtil();
        String sql="select * from product limit "+(3*(currentPage-1))+",3";
        PreparedStatement pst = util.getPs(sql);
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            Product u=new Product();
            u.setProdouctid(rs.getInt("prodouctid"));
            u.setProdouctname(rs.getString("prodouctname"));
            u.setProdouctdescription(rs.getString("prodouctdescription"));
            u.setProdouctprice(rs.getInt("prodouctprice"));
            u.setProdouctstock(rs.getInt("prodouctstock"));
            u.setProdouctfilename(rs.getString("prodouctfilename"));
            list.add(u);
        }
        pst.close();
        rs.close();
        util.close();
        return list;

    }


    public void deletepro(Product u){
        JdbcUtil util = new JdbcUtil();
        String sql="delete from product where prodouctname=?";
        PreparedStatement pst = util.getPs(sql);
        try {
            pst.setString(1, u.getProdouctname());
            pst.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            util.close();
            util.close(pst);
        }
    }

    public List<Product> toUpdatepro(Product u)throws Exception{
        List<Product> list=new ArrayList<>();
        JdbcUtil util = new JdbcUtil();
        String sql="select * from product where prodouctname=?";
        PreparedStatement pst = util.getPs(sql);
        pst.setString(1, u.getProdouctname());
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            u.setProdouctid(rs.getInt("prodouctid"));
            u.setProdouctname(rs.getString("prodouctname"));
            u.setProdouctdescription(rs.getString("prodouctdescription"));
            u.setProdouctprice(rs.getInt("prodouctprice"));
            u.setProdouctstock(rs.getInt("prodouctstock"));
            u.setProdouctfilename(rs.getString("prodouctfilename"));
            list.add(u);
        }
        pst.close();
        rs.close();
        util.close();
        return list;

    }

    public void updatepro(Product u) throws Exception{
        JdbcUtil util = new JdbcUtil();
        String sql="update product set prodouctname=?,prodouctprice=?,prodouctstock=? where prodouctname=?";
        PreparedStatement pst = util.getPs(sql);
        pst.setString(1, u.getProdouctname());
        pst.setInt(2, u.getProdouctprice());
        pst.setInt(3, u.getProdouctstock());
        pst.setString(4, u.getProdouctname());
        int i = pst.executeUpdate();
        System.out.println(i);
        pst.close();
        util.close();
    }

    public int getCount() throws Exception {
        int count=-1;
        JdbcUtil util = new JdbcUtil();
        String sql = "select count(*) from product";
        PreparedStatement pst = util.getPs(sql);
        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            count = rs.getInt(1);
        }
        pst.close();
        rs.close();
        util.close();
        return count;
    }
}
