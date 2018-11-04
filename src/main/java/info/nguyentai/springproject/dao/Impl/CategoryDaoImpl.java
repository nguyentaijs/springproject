package info.nguyentai.springproject.dao.Impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import info.nguyentai.springproject.dao.AbstractDao;
import info.nguyentai.springproject.dao.CategoryDao;
import info.nguyentai.springproject.entity.Category;

@Repository("categoryDao")
public class CategoryDaoImpl extends AbstractDao implements CategoryDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getCategories() {
		String sqlQuery = "SELECT * FROM category WHERE status != -1";
		Query getAllQuery = getSession().createNativeQuery(sqlQuery);
		return getAllQuery.getResultList();
	}

}
