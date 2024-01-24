package com.magic.www.biz.cart.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.magic.www.biz.product.ProductsVO;

@Repository
public class CartDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertShoppingCart(ProductsVO vo) {
		System.out.println("--> Mybatis로 insertShoppingCart() 처리");
		mybatis.insert("CartDAO.insertShoppingCart", vo);
	}

	public void deleteShoppingCart(ProductsVO vo) {
		System.out.println("--> Mybatis로 deleteShoppingCart() 처리");
		mybatis.delete("CartDAO.deleteShoppingCart", vo);
	}

	public List<ProductsVO> getShoppingCartList(ProductsVO vo) {
		System.out.println("--> Mybatis로 getShoppingCartList() 처리");
		return mybatis.selectList("CartDAO.getShoppingCartList", vo);
	}
}
