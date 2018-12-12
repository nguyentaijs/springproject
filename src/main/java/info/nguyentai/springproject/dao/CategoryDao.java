package info.nguyentai.springproject.dao;

import java.util.List;

import org.hibernate.HibernateException;

import info.nguyentai.springproject.dto.CategoryDTO;

public interface CategoryDao {
	public List<CategoryDTO> getCategories() throws HibernateException;
}
