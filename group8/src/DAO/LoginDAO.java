package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import scopedata.A_Account;
import scopedata.Account;

public class LoginDAO {
	public Account find(String _wid,String _pass) {
		Account account = null;
		Connection con = null;
		try {
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/group8","sa","pass");
			String sql = "select * from user where id = ? and pass = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, _wid);
			pstmt.setString(2, _pass);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String id = rs.getString("id");
			String pass = rs.getString("pass");
			String name = rs.getString("name");
			account = new Account(id,pass,name);
		}catch(Exception e) {
			System.out.print("exception error!");
			return null;
		}finally {
			try {
				if(con!=null) con.close();
			}catch(SQLException e) {
				System.out.print("SQL error!");
				return null;
			}
		}
		return account;
	}
	public A_Account findA(String _wid,String _pass) {
		A_Account account = null;
		Connection con = null;
		try {
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/group8","sa","pass");
			String sql = "select * from administer where id = ? and pass = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, _wid);
			pstmt.setString(2, _pass);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String id = rs.getString("id");
			String pass = rs.getString("pass");
			account = new A_Account(id,pass);
		}catch(Exception e) {
			System.out.print("exception error!");
			return null;
		}finally {
			try {
				if(con!=null) con.close();
			}catch(SQLException e) {
				System.out.print("SQL error!");
				return null;
			}
		}
		return account;
	}
}