package com.cosmet.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cosmet.model.Cart;

@Repository
public class CartDaoImpl implements CartDao{
@Autowired	
private SessionFactory sessionFactory;
	public Cart getCart(int cartId) {
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}

	public Cart validate(int cartId) throws IOException{
		System.out.println("i'm in cartdaoimpl.java");
		Cart cart=getCart(cartId);
		System.out.println("vignesh's checkout exception");
		if(cart.getCartItems().size()==0 || cart==null)
			throw new IOException(cartId+"");
		
		return cart;
	}
}