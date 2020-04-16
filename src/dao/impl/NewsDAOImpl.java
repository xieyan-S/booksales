package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.NewsDAO;
import db.DateBaseConnection;
import entity.News;

public class NewsDAOImpl implements NewsDAO {

	@Override
	public void insert(News pro) throws Exception {
		DateBaseConnection dbc=new DateBaseConnection();
		Connection con=dbc.getConn();
		
		String sql="insert into user(name,password,photo,remark) values (?,?,?,?)";
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,pro.getName());
			pstmt.setString(2,pro.getPassword());
			pstmt.setString(3,pro.getPhoto());
			pstmt.setString(4,pro.getRemark());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			dbc.close();
		}

	}

	@Override
	public void update(News pro) throws Exception {
		DateBaseConnection dbc=new DateBaseConnection();
		Connection con=dbc.getConn();
		
		String sql="update user set name=?,password=? where id=?";
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,pro.getName());
			pstmt.setString(2,pro.getPassword());
			pstmt.setInt(3,pro.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			dbc.close();
		}

	}

	@Override
	public void delete(int id) throws Exception {
		DateBaseConnection dbc=new DateBaseConnection();
		Connection con=dbc.getConn();
		
		String sql="delete from user where id=?";
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			dbc.close();
		}
		

	}

	@Override
	public News queryById(int id) throws Exception {
		News pro=new News();
		
		DateBaseConnection dbc=new DateBaseConnection();
		Connection con=dbc.getConn();
		
		String sql="select * from user where id=?";
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			pro.setId(id);
			pro.setName(rs.getString("name"));
			pro.setPassword(rs.getString("password"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			dbc.close();
//				ªÚ’ﬂtry {
//					con.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
		}
		
		
		
		return pro;

	}

	@Override
	public List queryAll() throws Exception {
		List News=new ArrayList();
		
		DateBaseConnection dbc=new DateBaseConnection();
		Connection con=dbc.getConn();
		
		String sql="select * from user";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){		
				News pro=new News();
				pro.setId(rs.getInt("id"));
				pro.setName(rs.getString("name"));
				pro.setPassword(rs.getString("password"));
				pro.setPhoto(rs.getString("photo"));
				pro.setRemark(rs.getString("remark"));
				
				News.add(pro);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{

			dbc.close();

		}
		return News;
	}

	@Override
	public List queryByLike(String cond) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
