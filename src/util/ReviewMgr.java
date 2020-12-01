package util;

import java.sql.*;
import java.util.Vector;




public class ReviewMgr {

	 private DBConnectionMgr pool = null;

	    public ReviewMgr() {
	        try {
	            pool = DBConnectionMgr.getInstance();
	        } catch (Exception e) {
	            System.out.println("Error !!");
	        }
	    }
	    
	    public Vector getReviewList() throws SQLException {
	        Connection con = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        Vector vecList = new Vector();

	        try {
	            con = pool.getConnection();
	            String strQuery = "select * from reviews order by no desc";
	            stmt = con.createStatement();
	            rs = stmt.executeQuery(strQuery);

	            while (rs.next()) {
	                ReviewBean joinBean = new ReviewBean();
	                joinBean.setReview_no(rs.getInt("no"));
	                joinBean.setReview_title(rs.getString("title"));
	                joinBean.setReview_review(rs.getString("review"));
	                joinBean.setReview_name(rs.getString("name"));
	                vecList.add(joinBean);
	            }
	        } catch (Exception ex) {
	            System.out.println("Exception" + ex);
	        } finally {
	            pool.freeConnection(con, stmt, rs);
	        }
	        return vecList;
	    }
	    
	    public ReviewBean getReview(String no) {
	    	Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        ReviewBean review = null;

	        try {
	            con = pool.getConnection();
	            String query = "select * from reviews where no=?";
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, no);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	            	review = new ReviewBean();
	            	review.setReview_no(rs.getInt("no"));
	            	review.setReview_title(rs.getString("title"));
	            	review.setReview_review(rs.getString("review"));
	            	review.setReview_name(rs.getString("name"));            	
	            }
	        } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            pool.freeConnection(con, pstmt, rs);
	        }
	        return review;

	    }
	    
	    public boolean ReviewInsert(String title , String reviewtxt, String name) {
	    	Connection con = null;
	    	PreparedStatement pstmt = null;
	    	boolean check = false;
	    	try {
	    		con = pool.getConnection();
	    		String query = "insert into reviews(title,review,name) values(?,?,?)";
	    		pstmt = con.prepareStatement(query);
	    		pstmt.setString(1, title);
	    		pstmt.setString(2, reviewtxt);
	            pstmt.setString(3, name);
	            int count = pstmt.executeUpdate();
	            if (count == 1) {
	            	check = true;
	            }
	    	
	    	} catch(Exception ex) {
	    		System.out.println("Exception" + ex);
	    	} finally {
	    		pool.freeConnection(con,pstmt);
	    	}
	    	
	    	return check;
	    }
 	    
	    /* 
	     	    public boolean ReviewInsert(String title, String reviews, String name) {
	    	Connection con = null;
	    	PreparedStatement pstmt = null;
	    	boolean check = false;
	    	try {
	    		con = pool.getConnection();
	    		String query = "insert into reviews(title, review, name) values(?,?,?)";
	    		pstmt = con.prepareStatement(query);
	    		pstmt.setString(1, title);
	            pstmt.setString(2, reviews);
	            pstmt.setString(3, name);
	            int count = pstmt.executeUpdate();
	            if (count == 1) {
	            	check = true;
	            }
	    	
	    	} catch(Exception ex) {
	    		System.out.println("Exception" + ex);
	    	} finally {
	    		pool.freeConnection(con,pstmt);
	    	}
	    	
	    	return check;
	    } */
	    

	
}
