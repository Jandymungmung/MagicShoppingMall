package com.magic.www.view.product.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.magic.www.biz.product.ProductsVO;
import com.magic.www.biz.product.impl.ProductsService;

@Controller
public class ProductsController {
	@Autowired
	private ProductsService productsService;

	@RequestMapping("/getProductList.do")
	public String getProductList(ProductsVO vo, Model model) {
		System.out.println("상품 목록 검색 처리");
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("product_name");
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		model.addAttribute("productList", productsService.getProductList(vo));
		return "getProductList.jsp";
	}
	
	@RequestMapping("/getSearchProductList.do")
	public String getSearchProductList(ProductsVO vo, Model model) {
		System.out.println("검색 상품 목록 가져오기");
		model.addAttribute("products", productsService.getSearchProductList(vo));
		return "getSearchProductList.jsp";
	}

	@RequestMapping("/insertProduct.do")
	public String insertProduct(ProductsVO vo) throws IOException {
		System.out.println("상품 등록 처리");
		MultipartFile thumbnail = vo.getThumbnail();
		MultipartFile detailCut = vo.getDetail_cut();
		if (thumbnail != null) {
			long timeStamp = System.currentTimeMillis();
			String thumbnailFileName = timeStamp + "_" + thumbnail.getOriginalFilename();
			thumbnail.transferTo(
					new File("C:/JavaStudy/spring2/A_MainProject_MagicShoppingMall/src/main/webapp/img/thumbnail/"
							+ thumbnailFileName));
			vo.setThumbnail_file_name(thumbnailFileName);

			if (detailCut != null) {
				String detailCutFileName = timeStamp + "_" + detailCut.getOriginalFilename();
				detailCut.transferTo(
						new File("C:/JavaStudy/spring2/A_MainProject_MagicShoppingMall/src/main/webapp/img/detailCut/"
								+ detailCutFileName));
				vo.setDetail_cut_file_name(thumbnailFileName);
			}
		}

		productsService.insertProduct(vo);
		return "getProductList.do";
	}

	@RequestMapping("/updateProduct.do")
	public String updateProduct(ProductsVO vo, Model model) throws IOException {
		System.out.println("상품 수정 처리");
		MultipartFile thumbnail = vo.getThumbnail();
		MultipartFile detailCut = vo.getDetail_cut();
		if (thumbnail != null) {
			long timeStamp = System.currentTimeMillis();
			String thumbnailFileName = timeStamp + "_" + thumbnail.getOriginalFilename();
			thumbnail.transferTo(
					new File("C:/JavaStudy/spring2/A_MainProject_MagicShoppingMall/src/main/webapp/img/thumbnail/"
							+ thumbnailFileName));
			vo.setThumbnail_file_name(thumbnailFileName);

			if (detailCut != null) {
				String detailCutFileName = timeStamp + "_" + detailCut.getOriginalFilename();
				detailCut.transferTo(
						new File("C:/JavaStudy/spring2/A_MainProject_MagicShoppingMall/src/main/webapp/img/detailCut/"
								+ detailCutFileName));
				vo.setDetail_cut_file_name(thumbnailFileName);
			}
		}
		productsService.updateProduct(vo);
		return "getProductList.do";
	}

	@RequestMapping("/getProduct.do")
	public String getProduct(ProductsVO vo, Model model) {
		System.out.println("상품 가져오기 처리");
		model.addAttribute("product", productsService.getProduct(vo));
		return "getProduct.jsp";
	}

	@RequestMapping("/detailProduct.do")
	public String getProductDetail(ProductsVO vo, Model model) {
		System.out.println("상품 상세 조회");
		model.addAttribute("product", productsService.getProductDetail(vo));
		return "detailProduct.jsp";
	}
	
	@RequestMapping("/deleteProduct.do")
	public String deleteProduct(ProductsVO vo) {
		System.out.println("상품 삭제 처리");
		productsService.deleteProduct(vo);
		return "getProductList.do";
	}
	
	
}
