package info.nguyentai.springproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ImagesController extends GenericController{

	@RequestMapping(value = "/images", method = RequestMethod.GET)
	public String getAllImages(Model model) {
		model.addAttribute("pageTitle", "hello product");
		return "images";
	}
}
