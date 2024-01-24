package com.magic.www.biz.cart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.magic.www.biz.product.ProductsVO;


@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAOMybatis cartDAO;
	
	@Override
	public void insertShoppingCart(ProductsVO vo) {
		cartDAO.insertShoppingCart(vo);
	}

	@Override
	public void deleteShoppingCart(ProductsVO vo) {
		cartDAO.deleteShoppingCart(vo);
	}

	@Override
	public List<ProductsVO> getShoppingCartList(ProductsVO vo) {
		return cartDAO.getShoppingCartList(vo);
	}

}
