package com.magic.www.view.wish.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.magic.www.biz.product.ProductsVO;
import com.magic.www.biz.wish.impl.WishService;

@Controller
public class WishController {
	@Autowired
	private WishService wishService;

	@RequestMapping("/insertWish.do")
	public String insertWish(ProductsVO vo, Model model) {
		System.out.println("관심 등록");
		System.out.println(vo.getProduct_number());
		System.out.println(vo.getProduct_name());
		wishService.insertWish(vo);
		model.addAttribute("message", "관심 목록에 추가되었습니다.");
		return "detailProduct.do";
	}

	@RequestMapping("/deleteWish.do")
	public String deleteWish(ProductsVO vo, Model model) {
		System.out.println("관심 등록 삭제");
		wishService.deleteWish(vo);
		return "getWishList.do";
	}

	@RequestMapping("/getWishList.do")
	public String getWishList(ProductsVO vo, Model model) {
		System.out.println("관심 목록 가져오기");
		System.out.println(vo.getUserId());
		List<ProductsVO> wishList = wishService.getWishList(vo);
		model.addAttribute("wishList", wishList);
		return "getWishList.jsp";
	}
}
