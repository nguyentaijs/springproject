package info.nguyentai.springproject.dto;

import javax.persistence.Entity;

import info.nguyentai.springproject.entity.Category;

@Entity
@SuppressWarnings("serial")
public class CategoryDTO extends Category{
	private boolean selected;

	public boolean isSelected() {
		return selected;
	}

	public void setSelected(boolean selected) {
		this.selected = selected;
	}
	
}
