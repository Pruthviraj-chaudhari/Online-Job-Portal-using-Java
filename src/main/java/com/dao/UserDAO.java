package com.dao;

import java.sql.ResultSet;

import com.entity.User;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class UserDAO {
	private java.sql.Connection conn;

	public UserDAO(java.sql.Connection connection) {
		super();
		this.conn = connection;
	}

	public boolean addUser(User u) {

		boolean f = false;
		try {

			String sql = "insert into user(name, qualification, email, password, role) values (?,?,?,?,?)";
			java.sql.PreparedStatement rs = conn.prepareStatement(sql);
			rs.setString(1, u.getName());
			rs.setString(2, u.getQualification());
			rs.setString(3, u.getEmail());
			rs.setString(4, u.getPassword());
			rs.setString(5, "user");

			int i = rs.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String email, String password) {
		User u = null;
		try {

			String sql = "select * from user where email=? and password=?";
			java.sql.PreparedStatement rs = conn.prepareStatement(sql);
			rs.setString(1, email);
			rs.setString(2, password);

			ResultSet ps = rs.executeQuery();
			while (ps.next()) {
				u = new User();
				u.setId(ps.getInt(1));
				u.setName(ps.getString(2));
				u.setQualification(ps.getString(3));
				u.setEmail(ps.getString(4));
				u.setPassword(ps.getString(5));
				u.setRole(ps.getString(6));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}


public boolean updateUser(User  u) {
	boolean f = false;
	try {

		String sql = "update user set name=?, qualification=?, email=?, password=? where id=?";
		java.sql.PreparedStatement ps = conn.prepareStatement(sql);
		
		ps.setString(1, u.getName());
		ps.setString(2, u.getQualification());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getPassword());
		ps.setInt(5, u.getId());

		int i= ps.executeUpdate();
		if(i==1) {
			f=true;
		}

	} catch (Exception e) {
		e.printStackTrace();
	}

	return f;
}

}














