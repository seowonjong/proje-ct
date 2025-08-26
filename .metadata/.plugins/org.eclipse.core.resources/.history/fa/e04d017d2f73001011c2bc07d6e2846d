package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Util.DBUtil;
import oracle.jdbc.oracore.Util;

public class HelloDAO {
    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;

    public void insertName(String name) {
        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO hello(name) VALUES(?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
    }

    public List<String> getAll() {
        List<String> list = new ArrayList<>();
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM hello";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                String name = rs.getString("name");
                list.add(name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	DBUtil.close(conn, pstmt, rs);
        }
        return list;
    }
}
