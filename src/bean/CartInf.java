package bean;

public class CartInf {
	private String bookId;//���
	private int bookNum;//�û�����������
	
	public CartInf(){//�޲εĹ����࣬��ʼ������ֵ
		bookId="";
		bookNum=0;
	}
	
	public CartInf(String bookId,int bookNum){//�������ﳵ����
		this.bookId=bookId;
		this.bookNum=bookNum;
	} 
	
	public String getBookId(){//��ȡ���
		return bookId;
	}
	
	public void setBookId(String bookId){//�������
		this.bookId=bookId;
	}
	
	public int getBookNum(){//��ȡ������������
		return bookNum;
	}
	
	public void setBookNum(int bookNum){//���ø�����������
		this.bookNum=bookNum;
	}
}
