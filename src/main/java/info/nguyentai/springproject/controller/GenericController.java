package info.nguyentai.springproject.controller;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import info.nguyentai.springproject.dto.CategoryDTO;
import info.nguyentai.springproject.service.CategoryService;

public abstract class GenericController {

	@Autowired
	private CategoryService categoryService;
	
	/**
	 * <pre>
	 * Based on current path >> set selected category
	 * AS IS: child categories have the same level as parent
	 * TO BE: parent contains children
	 * </pre>
	 * @param model
	 * @param request
	 */
	@ModelAttribute("categories")
	public void setCategories(Model model, HttpServletRequest request) {
		String path = request.getRequestURI();
		// /springprj/images => images
		String noPrjName = StringUtils.substring(path, path.indexOf("/", path.indexOf("/") + 1) + 1);
		List<CategoryDTO> categories = categoryService.getCategories();
		Set<CategoryDTO> categoriesSet = new TreeSet<>(categories);
		categoriesSet.stream()
			.filter(category -> noPrjName.startsWith(category.getPath()))
			.forEach(category -> category.setSelected(true));
		
		model.addAttribute("categories", categoriesSet);
	}
}
