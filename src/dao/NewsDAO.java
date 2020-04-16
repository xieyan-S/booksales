package dao;

import java.util.List;

import entity.News;



public interface NewsDAO {
	
	// 增加操作
	public void insert(News person) throws Exception ;
	// 修改操作
	public void update(News person) throws Exception ;
	// 删除操作
	public void delete(int id) throws Exception ;
	
	// 按ID查询，主要为更新使用
	public News queryById(int id) throws Exception ;
	// 查询全部
	public List queryAll() throws Exception ;
	// 模糊查询
	public List queryByLike(String cond) throws Exception ;
}
