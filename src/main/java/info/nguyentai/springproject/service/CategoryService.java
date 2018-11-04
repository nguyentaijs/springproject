package info.nguyentai.springproject.service;

import java.util.List;

import org.hibernate.HibernateException;

import info.nguyentai.springproject.entity.Category;

public interface CategoryService {
	
	public List<Category> getCategories() throws HibernateException;

}
