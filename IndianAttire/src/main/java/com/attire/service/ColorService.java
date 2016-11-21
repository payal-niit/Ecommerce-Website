package com.attire.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.attire.daoimpl.ColorDAOImpl;
import com.attire.model.Color;



@Service
@Transactional
public class ColorService {
	
	@Autowired
	private ColorDAOImpl colorDAO;
	
	public void createColor(Color color) {
		colorDAO.createColor(color);
	}
	
	public Color getByName(String colorName) {
		return colorDAO.getByName(colorName);
	}
	
	public List<Color> list() {
		return colorDAO.list();
	}
	
	public String listCategories() {
		return colorDAO.listCategories();
	}

}
