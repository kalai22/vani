package com.cosmet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosmet.dao.CartDao;
import com.cosmet.model.Cart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
private CartDao cartDao;
	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}

}
