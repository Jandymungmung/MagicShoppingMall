package com.magic.www.biz.cart.impl;

import java.util.List;

import com.magic.www.biz.product.ProductsVO;

public interface CartService {
	
	void insertShoppingCart(ProductsVO vo);
	
	void deleteShoppingCart(ProductsVO vo);
	
	List<ProductsVO> getShoppingCartList(ProductsVO vo);
}
