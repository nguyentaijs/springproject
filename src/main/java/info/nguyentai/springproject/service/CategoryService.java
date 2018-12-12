package info.nguyentai.springproject.service;

import java.util.List;

import org.hibernate.HibernateException;

import info.nguyentai.springproject.dto.CategoryDTO;

public interface CategoryService {
	
	public List<CategoryDTO> getCategories() throws HibernateException;

}
