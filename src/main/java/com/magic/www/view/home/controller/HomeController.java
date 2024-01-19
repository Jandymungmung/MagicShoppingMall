package com.magic.www.view.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.magic.www.biz.product.ProductsVO;
import com.magic.www.biz.product.impl.ProductsService;

@Controller
public class HomeController {

	@Autowired
	private ProductsService productsService;
	
	@RequestMapping("/home.do")
	public ModelAndView home(ProductsVO vo) {
		//세팅할 데이터를 가져옴
		List<ProductsVO> dataList = productsService.getRecommendedProductList(vo);
		
		//화면을 정의하고 리턴함
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/views/home.jsp");
//		위에서 가져온 데이터를 화면 객체에 넣어줌
		if (dataList != null && !dataList.isEmpty()) {
	        mv.addObject("products", dataList);
	    }
		return mv;
	}
}
