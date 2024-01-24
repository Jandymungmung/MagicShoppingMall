package com.magic.www.view.cart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.magic.www.biz.cart.impl.CartService;
import com.magic.www.biz.product.ProductsVO;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/insertShoppingCart.do")
	public String insertShoppingCart(ProductsVO vo, Model model) {
		System.out.println("장바구니 추가");
		cartService.insertShoppingCart(vo);
		model.addAttribute("message", "장바구니에 추가되었습니다.");
		return "detailProduct.do";
	}
	
	@RequestMapping("/deleteShoppingCart.do")
	public String deleteShoppingCart(ProductsVO vo, Model model) {
		System.out.println("장바구니 삭제");
		cartService.deleteShoppingCart(vo);
		return "getShoppingCartList.do";
	}
	
	@RequestMapping("/getShoppingCartList.do")
	public String getShoppingCartList(ProductsVO vo, Model model) {
		System.out.println("장바구니 가져오기");
		List<ProductsVO> cartList = cartService.getShoppingCartList(vo);
		System.out.println(cartList);
		model.addAttribute("cartList", cartList);
		return "getShoppingCartList.jsp";
	}
}
