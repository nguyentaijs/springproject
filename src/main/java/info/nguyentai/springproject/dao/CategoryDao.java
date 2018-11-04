package info.nguyentai.springproject.dao;

import java.util.List;

import org.hibernate.HibernateException;

import info.nguyentai.springproject.entity.Category;

public interface CategoryDao {
	public List<Category> getCategories() throws HibernateException;
}
