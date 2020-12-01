package util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//import com.sun.xml.internal.ws.client.RequestContext;


public class Admin_ProductMgr {

    private DBConnectionMgr pool = null;

    public Admin_ProductMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean checkNo(String no) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean checkCon = false;
        try {
            con = pool.getConnection();
            String strQuery = "select no from product where no = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, no);
            rs = pstmt.executeQuery();
            checkCon = rs.next();

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return checkCon;
    }

    
    
    public boolean insertProduct(HttpServletRequest req) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;
        try {
     
           String uploadDir =this.getClass().getResource("").getPath();
        	uploadDir =	uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"TEST_include/WebContent/data";
            MultipartRequest multi = new MultipartRequest(req, uploadDir, 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

            con = pool.getConnection();
            String query = "insert into product(no, name, price, detail, level, stock, image)"
                    + "values(?, ?, ?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, multi.getParameter("no"));
            pstmt.setString(2, multi.getParameter("name"));
            pstmt.setString(3, multi.getParameter("price"));
            pstmt.setString(4, multi.getParameter("detail"));
            pstmt.setString(5, multi.getParameter("level"));
            pstmt.setString(6, multi.getParameter("stock"));

            if (multi.getFilesystemName("image") == null) {
                pstmt.setString(7, "ready.gif");
            } else {
                pstmt.setString(7, multi.getFilesystemName("image"));
            }
            int count = pstmt.executeUpdate();
            if (count == 1) result = true;

        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }

    public Admin_ProductBean getProduct(String no) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Admin_ProductBean product = null;

        try {
            con = pool.getConnection();
            String query = "select * from product where no=?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, no);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                product = new Admin_ProductBean();
                product.setNo(rs.getString("no"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getString("price"));
                product.setDetail(rs.getString("detail"));
                product.setLevel(rs.getString("level"));
                product.setStock(rs.getString("stock"));
                product.setImage(rs.getString("image"));
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return product;

    }



    public Vector getProductList() throws SQLException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vProduct = new Vector();

        try {
            con = pool.getConnection();
            String query = "select * from product order by no desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            
            
            
            while (rs.next()) {
            	
            	
                Admin_ProductBean product = new Admin_ProductBean();
                product.setNo(rs.getString("no"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getString("price"));
                product.setDetail(rs.getString("detail"));
                product.setLevel(rs.getString("level"));
                product.setStock(rs.getString("stock"));
                product.setImage(rs.getString("image"));
                vProduct.add(product);
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vProduct;
    }


    public boolean deleteProduct(String no) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;

        try {
            con = pool.getConnection();
            String query = "delete from product where no = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, no);
            int count = pstmt.executeUpdate();
            if (count == 1) result = true;
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }


}