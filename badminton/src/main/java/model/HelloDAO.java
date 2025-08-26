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

    public void insertInfo(String resv_no, String cust_no, String resv_date, String court_no) {
        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO info VALUES(?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, resv_no);
            pstmt.setString(2, cust_no);
            pstmt.setString(3, resv_date);
            pstmt.setString(4, court_no);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
    }

    public List<ReservationDTO> getAll() {
        List<ReservationDTO> list = new ArrayList<>();
        try {
            conn = DBUtil.getConnection();
            String sql = "SELECT * FROM info";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                String resv_no = rs.getString(1);
                String cust_no = rs.getString(2);
                String resv_date = rs.getString(3);
                String court_no = rs.getString(4);
                list.add(new ReservationDTO(resv_no, cust_no, resv_date, court_no));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	DBUtil.close(conn, pstmt, rs);
        }
        return list;
    }
}
