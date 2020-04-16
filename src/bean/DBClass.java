/**
 * 该类为网上书店操作数据库的公用类
 * 用于数据库连接、查询和更新等操作 
 */
package bean;

import java.io.*;
import java.util.*;
import java.sql.*;

public  class  DBClass
{
	private String driver; 
	private String url;
	private String username;
	private String password;
	private Connection connection;
	private Statement statement;
	private String message="";
	
	public DBClass(){
		driver	= "com.mysql.jdbc.Driver" ;
		url = "jdbc:mysql://localhost:3306/booksales?useUnicode=true&characterEncoding=utf8" ;
		username = "root" ;
		password = "123456" ;
		connection=null;
	   	statement=null;
	 	message="";
	}
	
	public DBClass(String driver,String url,String username,String password){
		this.driver=driver;
		this.url=url;
		this.username=username;
		this.password=password;
		this.connection=null;
	   	this.statement=null;
	 	this.message="";	
	}
	
	public String getDriver(){
		return driver;
	}
	
	public void setDriver(String driver){
		this.driver=driver;
	}
	
	public String getUrl(){
		return url;
	}
	
	public void setUrl(String url){
		this.url=url;
	}
	
	public String getUsername(){
		return username;
	}
	
	public void setUsername(String username){
		this.username=username;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password=password;
	}
	
	public Connection getConnection(){
		return connection;
	}
	
	public void setConnection(Connection connection){
		this.connection=connection;
	}
	
	public Statement getStatement(){
		return statement;
	}
	
	public void setStatement(Statement statement){
		this.statement=statement;
	}
	
	
	public String getMessage(){
		return message;
	}
	
	public void setMessage(String message){
		this.message=message;
	}
	
	/* 连接数据库 */
	public Connection connect(){
		try{
		Class.forName(driver); 	
        	connection=DriverManager.getConnection(url,username,password);
 	    	statement=connection.createStatement();
		}catch(ClassNotFoundException cnfe){
			message="connection:"+cnfe;
		}catch(SQLException sqle){
			message="executeQuery:"+sqle;
		}
		return connection;
	}
	
	/* 执行SQL查询并返回结果 */
	public ResultSet executeQuery(String query){
		ResultSet resultset=null;
		try{
     		resultset=statement.executeQuery(query);
		}catch(SQLException sqle){
			message="executeQuery:"+sqle;
		}
		return resultset;
	}
	
	/* 执行数据库更新操作 */
	public void executeUpdate(String command){
		try{
			
			statement.executeUpdate(command);
		}catch(SQLException sqle){
			message="executeUpdate:"+sqle;
		}
	}
	
	/* 关闭数据库连接 */
	public void closeConnection(){
		try{
			connection.close();
		}catch(SQLException sqle){
			message="closeConnection:"+sqle;
		}
	}
}