package com.cosmet.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.cosmet.model.Product;
import com.cosmet.service.CategoryService;
import com.cosmet.service.ProductService;

@Controller
public class ProductController {

private Logger logger=Logger.getLogger(ProductController.class);
	
@Autowired
private ProductService productService;
@Autowired
private CategoryService categoryService;	
	
public ProductController(){
	System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
}

//http://localhost:8080/project1/admin/product/productform
@RequestMapping("/admin/product/productform")
public String getProductForm(Model model){
	//Product product = new Product();
	model.addAttribute("product",new Product());
	model.addAttribute("categories",categoryService.getCategories());
	logger.debug("Hi there");
	return "productform";
}
							/*Product Adding coding*/

@RequestMapping("/admin/product/addProduct")
public String saveProduct(
	@Valid  @ModelAttribute(value="product") Product product,BindingResult result,Model model){
	model.addAttribute("categories",categoryService.getCategories());
	logger.debug("=======================================================");
	if(result.hasErrors())
		return "productform";
	productService.saveProduct(product);
	logger.debug("After persisting the product details");
		
							/*Adding Image to a Product*/
	
	MultipartFile prodImage=product.getImage();
	if(!prodImage.isEmpty()){
		Path paths=Paths.get("C:/Users/Lakshmi/workspace/Cosmet/src/main/webapp/resource/images/"+product.getId()+".jpg");
		
		try{
			prodImage.transferTo(new File(paths.toString()));
		} catch(IllegalStateException e){
			e.printStackTrace();
		} catch(IOException e){
			e.printStackTrace();
		}
	}
	return "redirect:/all/product/getAllProducts";	
}
		
					/*After hit add product button it will redirect to this path*/

@RequestMapping("/all/product/getAllProducts")
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productlist",products);
	return "productlist";
}
							/*View product*/

@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
return "viewproduct";
}
							/*Delete product*/

@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	productService.deleteProduct(id);
	return "redirect:/all/product/getAllProducts";
}

					/*to display the form to edit product details*/

@RequestMapping("/admin/product/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
}

@RequestMapping(value="/admin/product/editProduct",method=RequestMethod.POST)
public String editProductDetails(@Valid @ModelAttribute("product") Product product,BindingResult result){
	if(result.hasErrors())
		return "productform";
	productService.updateProduct(product);
	return "redirect:/all/product/getAllProducts";
}

@RequestMapping("/all/product/productsByCategory")
public String getProductsByCategory(@RequestParam(name="searchCondition")String searchCondition,Model model){
	List<Product>products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productlist";
}

}