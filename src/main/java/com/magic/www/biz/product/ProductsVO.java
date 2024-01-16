package com.magic.www.biz.product;

import org.springframework.web.multipart.MultipartFile;

public class ProductsVO {
	private int product_number;
    private String product_name;
    private String product_english_name;
    private String origin;
    private double price;
    private int stock_count;
    private String brief_description;
    private MultipartFile thumbnail;
    private MultipartFile detail_cut;
    private boolean sold_out;
    private String registration_date;
    private String categories;
    private String detail_description;
    private String searchCondition;
    private String searchKeyword;
    private String thumbnail_file_name;
    private String detail_cut_file_name;
    
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_english_name() {
		return product_english_name;
	}
	public void setProduct_english_name(String product_english_name) {
		this.product_english_name = product_english_name;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStock_count() {
		return stock_count;
	}
	public void setStock_count(int stock_count) {
		this.stock_count = stock_count;
	}
	public String getBrief_description() {
		return brief_description;
	}
	public void setBrief_description(String brief_description) {
		this.brief_description = brief_description;
	}
	
	public boolean isSold_out() {
		return sold_out;
	}
	public void setSold_out(boolean sold_out) {
		this.sold_out = sold_out;
	}
	public String getRegistration_date() {
		return registration_date;
	}
	public void setRegistration_date(String registration_date) {
		this.registration_date = registration_date;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public String getDetail_description() {
		return detail_description;
	}
	public void setDetail_description(String detail_description) {
		this.detail_description = detail_description;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public MultipartFile getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(MultipartFile thumbnail) {
		this.thumbnail = thumbnail;
	}
	public MultipartFile getDetail_cut() {
		return detail_cut;
	}
	public void setDetail_cut(MultipartFile detail_cut) {
		this.detail_cut = detail_cut;
	}
	public String getThumbnail_file_name() {
		return thumbnail_file_name;
	}
	public void setThumbnail_file_name(String thumbnail_file_name) {
		this.thumbnail_file_name = thumbnail_file_name;
	}
	public String getDetail_cut_file_name() {
		return detail_cut_file_name;
	}
	public void setDetail_cut_file_name(String detail_cut_file_name) {
		this.detail_cut_file_name = detail_cut_file_name;
	}
	
    
}
