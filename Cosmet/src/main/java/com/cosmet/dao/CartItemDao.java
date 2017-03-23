package com.cosmet.dao;

import com.cosmet.model.Cart;
import com.cosmet.model.CartItem;

public interface CartItemDao {
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);
}