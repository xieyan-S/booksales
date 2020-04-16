package bean;

public class CartInf {
	private String bookId;//书号
	private int bookNum;//用户订购的数量
	
	public CartInf(){//无参的构造类，初始化属性值
		bookId="";
		bookNum=0;
	}
	
	public CartInf(String bookId,int bookNum){//创建购物车对象
		this.bookId=bookId;
		this.bookNum=bookNum;
	} 
	
	public String getBookId(){//获取书号
		return bookId;
	}
	
	public void setBookId(String bookId){//设置书号
		this.bookId=bookId;
	}
	
	public int getBookNum(){//获取该书号书的数量
		return bookNum;
	}
	
	public void setBookNum(int bookNum){//设置该书号书的数量
		this.bookNum=bookNum;
	}
}
