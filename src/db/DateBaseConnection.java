/* ��Ĺ�������
 * ������
 * ����ʱ��
 * �޸���
 * �޸�ʱ��
 * �޸�����
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
		}  //������������
		
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/booksales?useUnicode=true&characterEncoding=utf8","root","123456");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  //�������ݿ�

		
		
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
