<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서별 근무일수 집계</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Noto Sans KR', sans-serif;
    }

    body {
        background: #f7f7f7;
        color: #333;
    }

    section {
        width: 100%;
        min-height: calc(100vh - 130px);
        padding: 40px 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        background: #f7f7f7;
    }

    section h2 {
        font-size: 28px;
        font-weight: bold;
        color: #2c3e50;
        margin-bottom: 30px;
        text-align: center;
    }

    table {
        width: 90%;
        max-width: 900px;
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        background: #fff;
    }

    thead {
        background: linear-gradient(90deg, #1abc9c, #16a085);
        color: #fff;
    }

    thead th {
        padding: 15px;
        font-size: 16px;
        text-align: center;
    }

    tbody td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        font-size: 15px;
        color: #555;
    }

    tbody tr:hover {
        background-color: #f1f8f7;
        transition: background 0.3s;
    }

    @media (max-width: 768px) {
        section h2 {
            font-size: 22px;
        }
        table {
            width: 100%;
        }
        thead th, tbody td {
            padding: 10px;
            font-size: 14px;
        }
    }

    /* Footer 고정 */
    footer {
        width: 100%;
        height: 50px;
        background-color: #2c3e50;
        color: #fff;
        text-align: center;
        line-height: 50px;
        position: fixed;
        bottom: 0;
        left: 0;
        font-size: 0.9rem;
        box-shadow: 0 -2px 5px rgba(0,0,0,0.1);
    }
</style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="nav.jsp"></jsp:include>

    <section>
        <h2>부서별 근무일수 집계</h2>
        <table>
            <thead>
                <tr>
                    <th>사원번호</th>
                    <th>이름</th>
                    <th>부서명</th>
                    <th>근무일수</th>
                </tr>
            </thead>
            <tbody>
            <%
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                String deptname = "";
                try {
                    String sql = "SELECT em.empno, em.empname, em.deptcode, COUNT(re.resvdate) AS countday " +
                                 "FROM tbl_emp_2504 em, tbl_resv_2504 re " +
                                 "WHERE em.empno = re.empno " +
                                 "GROUP BY em.empno, em.empname, em.deptcode " +
                                 "ORDER BY em.deptcode";
                    pstmt = con.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    while(rs.next()){
                        String deptcode = rs.getString("deptcode");
                        switch(deptcode){
                            case "10": deptname = "영업팀"; break;
                            case "20": deptname = "총무팀"; break;
                            case "30": deptname = "구매팀"; break;
                        }
            %>
                <tr>
                    <td><%=rs.getString("empno")%></td>
                    <td><%=rs.getString("empname")%></td>
                    <td><%=deptname%></td>
                    <td><%=rs.getString("countday")%></td>
                </tr>
            <%
                    }
                } catch(Exception e){
                    e.printStackTrace();
                } finally {
                    if(rs != null) try{ rs.close(); } catch(Exception e){}
                    if(pstmt != null) try{ pstmt.close(); } catch(Exception e){}
                    if(con != null) try{ con.close(); } catch(Exception e){}
                }
            %>
            </tbody>
        </table>
    </section>

    <footer>seowonjong &copy; 2025 All rights reserved.</footer>
</body>
</html>
