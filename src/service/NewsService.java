package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.DateBaseConnection;
import entity.News;

public class NewsService {
	
	//登录验证
		/*
		 * 返回值：真表示验证通过，假表示验证失败
		 * 参数：Admin对象
		 * 
		 * 
		 */
	public boolean checklogin(News pro){
		boolean flag=false;
		
		DateBaseConnection dbc=new DateBaseConnection();
		Connection con=dbc.getConn();

		String sql="select * from user where name=? and password=?";
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,pro.getName());
			pstmt.setString(2,pro.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())flag=true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			dbc.close();
		}
		return flag;

	}
	
	
	
	//增加
	public void insert(News pro){		
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
	
	//删除
	public void delete(int id){
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
	
	//查询一个产品
	public News querybyid(int id){
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
//				或者try {
//					con.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
		}
		
		
		
		return pro;

	}
	
	//修改
	public void update(News pro){
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
	//查询全部
	public List<News> queryall(){
		List<News> News=new ArrayList<News>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DateBaseConnection dbc=new DateBaseConnection();
		con=dbc.getConn();
		
		String sql="select * from user";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){			
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String password=rs.getString("password");
				News tl=new News(id, name, password);
				News.add(tl);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			 try {
				 if(rs!=null)
				 {
				 rs.close();
				 }
				 if(pstmt!=null)
				 {
				 pstmt.close();
				 }
				 if(con!=null)
				 {
				 con.close();
				 }
				 } catch (SQLException e) {
				 e.printStackTrace();
				 }
		}
		return News;
	}
	
	
	public List<News> queryall2(){
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
	
	//按关键查询
	public List querybykey(String key){
		List News=new ArrayList();
		return News;
	}
}
