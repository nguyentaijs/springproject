package info.nguyentai.springproject.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

public abstract class GenericController {

	protected String currentLocation;

	public String getCurrentLocation() {
		setCurrentLocation();
		return currentLocation;
	}

	public abstract void setCurrentLocation();
	
	@ModelAttribute("currentLocation")
	public void applyCurrentLocation(Model model) {
		model.addAttribute("currentLocation", this.getCurrentLocation() == null ? "home" : this.getCurrentLocation());
	}
}
