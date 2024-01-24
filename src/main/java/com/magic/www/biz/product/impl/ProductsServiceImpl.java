package com.magic.www.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.magic.www.biz.product.ProductsVO;

@Service("productService")
public class ProductsServiceImpl implements ProductsService {
	@Autowired
	private ProductsDAOMybatis productsDAO;

	@Override
	public void insertProduct(ProductsVO vo) {
		productsDAO.insertProduct(vo);
	}

	@Override
	public void deleteProduct(ProductsVO vo) {
		productsDAO.deleteProduct(vo);
	}

	@Override
	public List<ProductsVO> getProductList(ProductsVO vo) {
		return productsDAO.getProductList(vo);
	}

	@Override
	public ProductsVO getProduct(ProductsVO vo) {
		return productsDAO.getProduct(vo);
	}

	@Override
	public void updateProduct(ProductsVO vo) {
		productsDAO.updateProduct(vo);
	}

	@Override
	public List<ProductsVO> getRecommendedProductList(ProductsVO vo) {
		return productsDAO.getRecommendedProductList(vo);
	}

	@Override
	public ProductsVO getProductDetail(ProductsVO vo) {
		return productsDAO.getProductDetail(vo);
	}

	@Override
	public List<ProductsVO> getSearchProductList(ProductsVO vo) {
		return productsDAO.getSearchProductList(vo);
	}

	@Override
	public List<ProductsVO> getCategories(ProductsVO vo) {
		return productsDAO.getCategories(vo);
	}

}
