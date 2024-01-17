package com.magic.www.biz.product.impl;

import java.util.List;

import com.magic.www.biz.product.ProductsVO;

public interface ProductsService {
	void insertProduct(ProductsVO vo);
	
	void deleteProduct(ProductsVO vo);
	
	ProductsVO getProduct(ProductsVO vo);

	List<ProductsVO> getProductList(ProductsVO vo);
	
	void updateProduct(ProductsVO vo);
}
