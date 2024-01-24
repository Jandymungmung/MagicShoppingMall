package com.magic.www.biz.wish.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.magic.www.biz.product.ProductsVO;

@Service("wishService")
public class WishServiceImpl implements WishService {
	@Autowired
	private WishDAOMybatis wishDAO;
	
	@Override
	public void insertWish(ProductsVO vo) {
		wishDAO.insertWish(vo);
	}

	@Override
	public void deleteWish(ProductsVO vo) {
		wishDAO.deleteWish(vo);
	}

	@Override
	public List<ProductsVO> getWishList(ProductsVO vo) {
		return wishDAO.getWishList(vo);
	}

}
