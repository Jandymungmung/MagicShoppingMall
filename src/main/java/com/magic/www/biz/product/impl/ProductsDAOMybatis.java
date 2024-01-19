package com.magic.www.biz.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.magic.www.biz.product.ProductsVO;

@Repository
public class ProductsDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertProduct(ProductsVO vo) {
		System.out.println("--> Mybatis로 insertProduct() 처리");
		mybatis.insert("ProductsDAO.insertProduct", vo);
	}
	
	public void deleteProduct(ProductsVO vo) {
		System.out.println("--> Mybatis로 deleteProduct() 처리");
		mybatis.delete("ProductsDAO.deleteProduct", vo);
	}
	
	public List<ProductsVO> getProductList(ProductsVO vo){
		System.out.println("--> Mybatis로 getProductList() 처리");
		return mybatis.selectList("ProductsDAO.getProductList", vo);
	}
	
	public ProductsVO getProduct(ProductsVO vo) {
		System.out.println("--> Mybatis로 getProduct() 처리");
		return mybatis.selectOne("ProductsDAO.getProduct", vo);
	}
	
	public void updateProduct(ProductsVO vo){
		System.out.println("--> Mybatis로 updateProduct() 처리");
		mybatis.update("ProductsDAO.updateProduct", vo);
	}

	public List<ProductsVO> getRecommendedProductList(ProductsVO vo) {
		System.out.println("--> Mybatis로 getRecommendedProductList() 처리");
		return mybatis.selectList("ProductsDAO.getRecommendedProductList", vo);
	}
}
