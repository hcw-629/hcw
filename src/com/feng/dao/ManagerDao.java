package com.feng.dao;

import com.feng.entity.Manager;
import com.feng.entity.User;
import com.feng.util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ManagerDao {
    //判断用户名id是否存在
    public int selectByManagerName(String name) {
        JdbcUtil util = new JdbcUtil();

        int count = 0;
        String sql = "select name from manager where id=?";
        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                count += 1;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close();
            util.close(ps, rs);
        }
        return count;
    }

    //用户登录查询
    public int selectByIdPwd(String name, String pwd) {
        int count = 0;
        JdbcUtil util = new JdbcUtil();

        String sql = "select * from manager where name=? and password=?";
        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, name);
            ps.setString(2, pwd);
            rs = ps.executeQuery();
            if (rs.next()) {
                count += 1;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close();
            util.close(ps, rs);
        }
        return count;
    }

    public Manager selectmanager(String name) {
        Manager manager = new Manager();

        JdbcUtil util = new JdbcUtil();
        String sql = "select * from manager where name=?";

        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                manager.setId(rs.getInt("id"));
                manager.setName(rs.getString("name"));
                manager.setPassword(rs.getInt("password"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close();
            util.close(ps, rs);
        }
        return manager;
    }

    public void updatemanagergrxx(Manager manager) throws Exception{
        JdbcUtil util = new JdbcUtil();
        String sql="update manager set name=?,password=? where id=?";
        PreparedStatement pst = util.getPs(sql);
        pst.setString(1, manager.getName());
        pst.setInt(2, manager.getPassword());
        pst.setInt(3, manager.getId());
        int i = pst.executeUpdate();
        System.out.println(i);
        pst.close();
        util.close();
    }
}




