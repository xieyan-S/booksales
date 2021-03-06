package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.NewsService;

import com.jspsmart.upload.SmartUpload;
import entity.News;
import factory.DAOFactory;

public class UserAddServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserAddServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		ServletConfig config=this.getServletConfig();
		
		 request.setCharacterEncoding("utf-8");
		 
		  String[] fileName={""};  
		  SmartUpload mySmartUpload = new SmartUpload();//实例化
		  try {
		   mySmartUpload.initialize(config, request, response);//初始化
		   mySmartUpload.upload();
		   for (int i = 0; i < mySmartUpload.getFiles().getCount(); i++) {
		    com.jspsmart.upload.File myfile = mySmartUpload.getFiles().getFile(i);
		    fileName[i] = myfile.getFileName();    
		    mySmartUpload.save("/upload");  //将文件上传到upload文件夹
		   }
		  } catch (Exception e) {  }
		  
		  String name =  mySmartUpload.getRequest().getParameter("name");
		  String password =  mySmartUpload.getRequest().getParameter("password");
		  String content = mySmartUpload.getRequest().getParameter("content");
		  
		  
		News pro=new News();
		pro.setName(name); 
		pro.setPassword(password); 
		pro.setPhoto(fileName[0]); 
		pro.setRemark(content); 

		try {
			DAOFactory.getTravelDAOInstance().insert(pro);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}	
		
		request.getRequestDispatcher("UserListServlet").forward(request, response);
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
