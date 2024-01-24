package com.magic.www.biz.wish.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.magic.www.biz.product.ProductsVO;

@Repository
public class WishDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertWish(ProductsVO vo) {
		System.out.println("--> Mybatis로 insertWish() 처리");
		mybatis.insert("WishDAO.insertWish", vo);
	}
	
	public void deleteWish(ProductsVO vo) {
		System.out.println("--> Mybatis로 deleteWish() 처리");
		mybatis.delete("WishDAO.deleteWish", vo);
	}
	
	public List<ProductsVO> getWishList(ProductsVO vo) {
		System.out.println("--> Mybatis로 getWishList() 처리");
		return mybatis.selectList("WishDAO.getWishList", vo);
	}
}
