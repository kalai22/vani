package com.cosmet.dao;

import java.util.List;

import com.cosmet.model.Product;

public interface ProductDao {
Product saveProduct(Product product);
List<Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(int id);
void updateProduct(Product product);
}















/*package com.game.dao;

import java.util.List;

import com.game.model.Product;

public interface ProductDao{
	Product saveProduct(Product product);
	List<Product> getAllProducts();
	Product getProductById(int id);
}*/




/*package com.game.dao;

import java.util.List;

import com.game.model.Product;

public interface ProductDao {

	public int insertRow(Product prd);

	 public List<Product> getList();

	 public Product getRowById(int id);

	 public int updateRow(Product prd);

	 public int deleteRow(int id);

}


*/
