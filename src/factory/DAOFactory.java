package factory;

import dao.NewsDAO;
import dao.impl.NewsDAOImpl;

public class DAOFactory {

	public static NewsDAO getTravelDAOInstance(){
		
		return new NewsDAOImpl();
	}
}
