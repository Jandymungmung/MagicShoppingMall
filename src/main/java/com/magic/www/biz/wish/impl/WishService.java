package com.magic.www.biz.wish.impl;

import java.util.List;

import com.magic.www.biz.product.ProductsVO;

public interface WishService {
	void insertWish(ProductsVO vo);
	
	void deleteWish(ProductsVO vo);
	
	List<ProductsVO> getWishList(ProductsVO vo);	
}
