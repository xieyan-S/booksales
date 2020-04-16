package entity;

public class News {
	private int id;				//×ÔÔöid
	private String name;		
	private String password;
	private String photo;	
	private String remark;
	
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public News(int id, String name, String password) {
		this.id = id;
		this.name = name;
		this.password = password;
	}
	public News() {
		
	}
}
