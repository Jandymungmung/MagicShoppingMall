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

}
