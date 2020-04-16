package dao;

import java.util.List;

import entity.News;



public interface NewsDAO {
	
	// ���Ӳ���
	public void insert(News person) throws Exception ;
	// �޸Ĳ���
	public void update(News person) throws Exception ;
	// ɾ������
	public void delete(int id) throws Exception ;
	
	// ��ID��ѯ����ҪΪ����ʹ��
	public News queryById(int id) throws Exception ;
	// ��ѯȫ��
	public List queryAll() throws Exception ;
	// ģ����ѯ
	public List queryByLike(String cond) throws Exception ;
}
