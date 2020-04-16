/**
 * ����Ϊ��������ַ���������������
 * ����Ա��ַ������м��Ͳ���
 * �ж��ַ����Ƿ�Ϊ���ֻ�E-mail��ַ
 * �������ַ���ת��Ϊ�����򸡵���
 */
package bean;

import java.util.*;

public class StrClass{
	
	private String str;
	
	public StrClass(){
		str="";
	}
	
	public StrClass(String str){
		this.str=str;
	}
	
	public String getStr(){
		return this.str;
	}
	
	public void setStr(String str){
		this.str=str;
	}
	
	/* �����ַ����Ƿ�Ϊ���֣��ǣ�����true�����򷵻�false */
	public boolean isNum(){
		boolean bool=true;
		for(int i=0;i<str.length();i++){
			char ch=str.charAt(i);
			if(!Character.isDigit(ch)){
				bool=false;
				break;
			}
		}
		return bool;
	}
	
	/* �����ַ����Ƿ�ΪE-mail��ַ���ǣ�����true�����򷵻�false */
	public boolean isEmail(){
		if(str.indexOf("@")==-1){
			return false;
		}else if(str.indexOf(".",str.indexOf("@"))==-1){
			return false;
		}else{
			return true;
		}
	}
	
	/* ���ַ���ת��Ϊ���� */
	public int toInt(){
		return Integer.parseInt(str);
	}
	
	/* ���ַ���ת��Ϊ������ */
	public float toFloat(){
		return Float.parseFloat(str);
	}
}