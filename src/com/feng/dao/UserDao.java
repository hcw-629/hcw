package com.feng.dao;

import com.feng.entity.User;
import com.feng.util.JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 对用户的数据库操作
 */
public class UserDao {

    //判断用户名id是否存在
    public int selectByuserId(String userid) {
        JdbcUtil util = new JdbcUtil();

        int count = 0;
        String sql = "select id from user where id=?";
        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, userid);
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
    public int selectByIdPwd(String userId, String pwd) {
        int count = 0;
        JdbcUtil util = new JdbcUtil();

        String sql = "select * from user where id=? and password=?";
        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, userId);
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

    //插入数据，即注册用户
    public int insert(User u) {
        int count = 0;

        JdbcUtil util = new JdbcUtil();
        String sql = "insert into user values(?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, u.getId());
            ps.setString(2, u.getName());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getIdenity_code());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getMobile());
            ps.setString(7, u.getAddress());
            ps.setInt(8, u.getStatus());
            ps.setInt(9, u.getBalance());
            count = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close();
            util.close(ps, rs);
        }
        return count;
    }

    public User selectuser(String userId) {
        User user = new User();

        JdbcUtil util = new JdbcUtil();
        String sql = "select * from user where id=?";

        PreparedStatement ps = util.getPs(sql);
        ResultSet rs = null;
        try {
            ps.setString(1, userId);
            rs = ps.executeQuery();
            if (rs.next()) {
                user.setId(rs.getString("id"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setIdenity_code(rs.getString("idenity_code"));
                user.setEmail(rs.getString("email"));
                user.setMobile(rs.getString("mobile"));
                user.setAddress(rs.getString("address"));
                user.setStatus(rs.getInt("status"));
                user.setBalance(rs.getInt("balance"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            util.close();
            util.close(ps, rs);
        }

        return user;
    }



    /**
     * 用户余额改变
     */
    public void updateBalance(String id,int balance) throws Exception{
        JdbcUtil util = new JdbcUtil();
        String sql="update user set balance=? where id=?";
        PreparedStatement pst = util.getPs(sql);
        pst.setInt(1, balance);
        pst.setString(2, id);
        int i = pst.executeUpdate();
        System.out.println(i);
        pst.close();
        util.close();
    }



    public void updategrxx(User user) throws Exception{
        JdbcUtil util = new JdbcUtil();
        String sql="update user set name=?,password=?,email=?,mobile=?,address=? where id=?";
        PreparedStatement pst = util.getPs(sql);
        pst.setString(1, user.getName());
        pst.setString(2, user.getPassword());
        pst.setString(3, user.getEmail());
        pst.setString(4, user.getMobile());
        pst.setString(5, user.getAddress());
        pst.setString(6, user.getId());
        int i = pst.executeUpdate();
        System.out.println(i);
        pst.close();
        util.close();
    }

    public List<User> getAll(int currentPage) throws Exception{
        List<User> list=new ArrayList<>();
        JdbcUtil util = new JdbcUtil();
        String sql="select * from user limit "+(3*(currentPage-1))+",3";
        PreparedStatement pst = util.getPs(sql);
        ResultSet rs = pst.executeQuery();
        while(rs.next()){
            User u=new User();
            u.setId(rs.getString("id"));
            u.setName(rs.getString("name"));
            u.setMobile(rs.getString("mobile"));
            u.setAddress(rs.getString("address"));
            list.add(u);
        }
        pst.close();
        rs.close();
        util.close();
        return list;

    }

    public void deleteuser(User u) throws Exception {
        JdbcUtil util = new JdbcUtil();
        String sql="delete from user where id=?";
        PreparedStatement pst = util.getPs(sql);
        pst.setString(1, u.getId());
        pst.executeUpdate();
        pst.close();
        util.close();
    }

    public int getCount() throws Exception {
        int count=-1;
        JdbcUtil util = new JdbcUtil();
        String sql = "select count(*) from user";
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
