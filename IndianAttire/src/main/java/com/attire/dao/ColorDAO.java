package com.attire.dao;

import java.util.List;

import com.attire.model.Color;

public interface ColorDAO {
	
	public void createColor(Color color);

	public String listCategories();
	
	public List<Color> list();
	
	public Color getByName(String colorName);

}
