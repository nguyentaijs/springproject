package info.nguyentai.springproject.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import info.nguyentai.springproject.common.Constants;
import info.nguyentai.springproject.entity.Post;

@Controller
public class PostController extends GenericController{
	
	private static final Logger logger = LoggerFactory.getLogger(PostController.class);
	
	@ModelAttribute(value = "date")
	public Date setDate(Model model) {
		return new Date();
	}
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String getAllProductsForm(Model model) {
		model.addAttribute("pageTitle", "hello product");
		return "post";
	}
	
	@RequestMapping(value = "/post", method = RequestMethod.POST)
	public String getAllProducts(Model model, @ModelAttribute Post post) {
		model.addAttribute("pageTitle", "hello product");
		return "post";
	}
	
	@Override
	public void setCurrentLocation() {
		this.currentLocation = Constants.CURRENT_LOCATION.POST;
	}
}
