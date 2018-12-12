package info.nguyentai.springproject.dao.Impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import info.nguyentai.springproject.dao.AbstractDao;
import info.nguyentai.springproject.dao.CategoryDao;
import info.nguyentai.springproject.dto.CategoryDTO;

@Repository("categoryDao")
public class CategoryDaoImpl extends AbstractDao implements CategoryDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryDTO> getCategories() {
		String sqlQuery = "SELECT *, 'FALSE' as selected FROM category WHERE status != -1";
		Query getAllQuery = getSession().createNativeQuery(sqlQuery).addEntity(CategoryDTO.class);
		return getAllQuery.getResultList();
	}

}
