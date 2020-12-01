package util;

import java.sql.*;
import java.util.Vector;



public class MemberMgr {

    private DBConnectionMgr pool = null;

    public MemberMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean checkId(String id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select id from members where id = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            checkCon = rs.next();

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return checkCon;
    }

   public boolean memberInsert(MemberBean joinBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "insert into members values(?,?,?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, joinBean.getUser_id());
            pstmt.setString(2, joinBean.getUser_passwd());
            pstmt.setString(3, joinBean.getUser_name());
            pstmt.setString(4, joinBean.getUser_email());
            pstmt.setString(5, joinBean.getUser_phone());           
            int count = pstmt.executeUpdate();
           
            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }

   
    public MemberBean getMember(String user_id) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberBean joinBean = null;

        try {
            con = pool.getConnection();
            String strQuery = "select * from members where id=?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, user_id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                joinBean = new MemberBean();
                joinBean.setUser_id(rs.getString("id"));
                joinBean.setUser_passwd(rs.getString("passwd"));
                joinBean.setUser_name(rs.getString("name"));
                joinBean.setUser_phone(rs.getString("phone"));
                joinBean.setUser_email(rs.getString("e_mail"));
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return joinBean;
    }

    public Vector getMemberList() {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vecList = new Vector();

        try {
            con = pool.getConnection();
            String strQuery = "select * from members order by id desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(strQuery);

            while (rs.next()) {
                MemberBean joinBean = new MemberBean();
                joinBean.setUser_id(rs.getString("id"));
                joinBean.setUser_passwd(rs.getString("passwd"));
                joinBean.setUser_name(rs.getString("name"));
                joinBean.setUser_phone(rs.getString("phone"));
                joinBean.setUser_email(rs.getString("e_mail"));
                vecList.add(joinBean);
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vecList;
    }

    public boolean memberUpdate(MemberBean joinBean) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            con = pool.getConnection();
            String strQuery = "update members set passwd=?, name=?,";
            strQuery = strQuery + " e_mail=?, phone=?,";
            strQuery = strQuery + " where id=? ";

            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, joinBean.getUser_passwd());
            pstmt.setString(2, joinBean.getUser_name());
            pstmt.setString(3, joinBean.getUser_email());
            pstmt.setString(4, joinBean.getUser_phone());
            pstmt.setString(5, joinBean.getUser_id());
            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return flag;
    }
    
    public boolean memberDelete(String id) {
       
    	Connection con = null; 
    	PreparedStatement pstmt = null; 	
    	boolean flag = false;
    	int n = 0;
    	try{
    		
    		con = pool.getConnection();
    		String sql = "delete from members where id =?";
    		pstmt = con.prepareStatement(sql);
    		pstmt.setString(1, id);
    		//pstmt.setString(1,joinBean.getUser_id()); 	
    		
    		n = pstmt.executeUpdate();
    		if (n > 0) {
                flag = true;
            }
    	} catch(Exception ex){
    		System.out.println("Exception" + ex);
    	} finally {
    		 pool.freeConnection(con, pstmt);
    	}
    	
    	return flag;
        
    }
    
    
    

    public boolean loginCheck(String id, String passwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select id, passwd from members where id = ? and passwd = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, passwd);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return loginCon;
    }

    public boolean adminCheck(String admin_id, String admin_passwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select id, passwd from admin where id = ? and passwd = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, admin_id);
            pstmt.setString(2, admin_passwd);
            rs = pstmt.executeQuery();
            loginCon = rs.next();
        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return loginCon;
    }
    

    
}
