/* 类的功能描述
 * 创建者
 * 创建时间
 * 修改者
 * 修改时间
 * 修改内容
 * 
 * 
 */

package db;

import java.sql.*;

public class DateBaseConnection {
	private Connection con=null;
	
	public Connection getConn(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  //载入驱动程序
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booksales?useUnicode=true&characterEncoding=utf8","root","123456");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  //连接数据库

		
		
		return con;
	}
	public void close(){
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
