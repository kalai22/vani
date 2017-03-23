package com.cosmet.service;

import com.cosmet.model.Cart;
import com.cosmet.model.CartItem;

public interface CartItemService {
	
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);

}