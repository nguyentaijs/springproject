package info.nguyentai.springproject.service.Impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import info.nguyentai.springproject.dao.CategoryDao;
import info.nguyentai.springproject.dto.CategoryDTO;
import info.nguyentai.springproject.service.CategoryService;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDao categoryDao;
	
	@Override
	public List<CategoryDTO> getCategories() throws HibernateException {
		return categoryDao.getCategories();
	}
	
}
