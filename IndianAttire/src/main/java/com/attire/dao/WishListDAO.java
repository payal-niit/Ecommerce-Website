package com.attire.dao;

import java.util.List;


import com.attire.model.WishList;

public interface WishListDAO {
	
	public void addToWishList(WishList wishList);

	public String listWishList();
	
	public List<WishList> list();	
	
	public String getByWishListIdGSON(int userId);
	
	public WishList getBywishListId(int wishListId);
	
	

}
