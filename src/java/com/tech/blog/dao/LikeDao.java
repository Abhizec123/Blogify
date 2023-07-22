package com.tech.blog.dao;

import java.sql.*;

public class LikeDao {

    Connection con;

    public LikeDao(Connection con) {
        this.con = con;
    }

//    public boolean insertLike(int pid,int uid){
//        boolean f=false;
//        try {
//            String q="insert into liked(pid,uid) values(?,?)";
//            PreparedStatement p=this.con.prepareStatement(q);
//            p.setInt(1, pid);
//            p.setInt(2, uid);
//            
//            p.executeUpdate();
//            
//            f=true;
//        } catch (Exception e) {
//        
//        e.printStackTrace();
//        }
//        return  f;
//    }
    public boolean insertLike(int pid, int uid) {
        boolean f = false;
        try {
            // Check if the user has already liked the post
            String qCheck = "SELECT COUNT(*) FROM liked WHERE pid = ? AND uid = ?";
            PreparedStatement pCheck = this.con.prepareStatement(qCheck);
            pCheck.setInt(1, pid);
            pCheck.setInt(2, uid);

            ResultSet rs = pCheck.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count == 0) {
                // If the user has not liked the post, insert the like
                String q = "INSERT INTO liked(pid, uid) VALUES(?, ?)";
                PreparedStatement p = this.con.prepareStatement(q);
                p.setInt(1, pid);
                p.setInt(2, uid);
                p.executeUpdate();
                f = true;
            } else {
                // User has already liked the post, so don't insert the like again
                System.out.println("User has already liked the post.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public int countLikeOnPost(int pid) {
        int c = 0;
        try {
            String q = "select count(*) from liked where pid=?";
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, pid);
            ResultSet set = p.executeQuery();
            if (set.next()) {
                c = set.getInt("count(*)");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return c;
    }

    public boolean isLikedByUser(int pid, int uid) {
        boolean f = false;
        try {
            PreparedStatement p = this.con.prepareStatement("select * from liked where pid=? and uid=?");
            p.setInt(1, pid);
            p.setInt(2, uid);
            ResultSet set = p.executeQuery();
            if (set.next()) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean deleteLike(int pid, int uid) {
        boolean f = false;
        try {
            PreparedStatement p = this.con.prepareStatement("delete from liked pid=? and uid=?");
            p.setInt(1, pid);
            p.setInt(2, uid);
            p.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

}
