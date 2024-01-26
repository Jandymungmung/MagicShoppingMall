package com.magic.www.biz.product.impl;

import java.util.List;

import com.magic.www.biz.product.ProductsVO;

public interface ProductsService {
	void insertProduct(ProductsVO vo);
	
	void deleteProduct(ProductsVO vo);
	
	ProductsVO getProduct(ProductsVO vo);

	List<ProductsVO> getProductList(ProductsVO vo);
	
	void updateProduct(ProductsVO vo);

	List<ProductsVO> getRecommendedProductList(ProductsVO vo);
	
	List<ProductsVO> getSearchProductList(ProductsVO vo);
	
	List<ProductsVO> getCategories(ProductsVO vo);

	ProductsVO getProductDetail(ProductsVO vo);

	ProductsVO getProductTotalPage(ProductsVO vo);
	
	
}
