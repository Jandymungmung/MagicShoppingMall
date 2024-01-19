<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>detail product</title>
<link rel="stylesheet" href="./css/detail.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->

	<div id="wrap">
		<div id="item_container">
			<div id="item">
				<div id="path">
					<div id="emptySpace"></div>
					<ol>
						<li><a href="home.do">HOME</a></li>
					</ol>
				</div>
				<div>
					<div class="detailArea">
						<div class="imgArea">
							<div class="keyImg">
								<a> <img src="./img/product/1.큰카드재생마술.jpg"
									alt="큰카드재생마술" class="BigImage">
								</a>
							</div>
							<a href="#de_video" class="">
								<div id="de_video_bt">
									<img src="./img/answer/de_vedeo_bt.png">
								</div>
							</a>
						</div>
						<div class="infoArea">
							<span class="icon"> <img src="./img/Hot/icon_rec(1).gif"
								class="icon_img" alt="추천">
							</span>
							<h2>
								<font color="cccccc"> <b>큰 카드 재생 마술</b>
								</font> <br> (Big card restore) <br>

							</h2>
							<div class="infoTopLine"></div>
							<div class="discount_rate4_wrap">
								<div class="discount_rate4 rate0">0%</div>
							</div>
							<div class="tableParent">
								<table>
									<tbody>
										<tr class=""></tr>
										<!--채울것-->
										<tr class="">
											<th scope="row" style="padding: 10px 0 15px 10px">원산지</th>
											<td style="padding: 7px 0 15px 0"><strong> <span
													style="font-size: 12px; color: #ffffff;">중국</span>
											</strong></td>
										</tr>
										<tr>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
											<td class="infoTopLine"></td>
										</tr>
										<tr class="">
											<th scope="row"><span
												style="font-size: 12px; color: #FFFFFF; font-weight: bold;">판매가</span>
											</th>
											<td><span
												style="font-size: 12px; color: #FFFFFF; font-weight: bold;">
													<strong id="">6,500원</strong>
											</span></td>
										</tr>
										<tr class="abc">
											<th scope="row"><span
												style="font-size: 12px; color: #FFFFFF;">적립금</span></th>
											<td><span style="font-size: 12px; color: #FFFFFF;">
													<p>
														<img src="./img/Hot/icon_sett01.gif" alt="무통장 입금 결제"
															style="margin-bottom: 2px;"> 100원 (3%)
													</p>
													<p>
														<img src="./img/Hot/icon_sett02.gif"> 100원 (2%)
													</p>
											</span></td>
										</tr>
										<tr class="">
											<th scope="row"><span
												style="font-size: 12px; color: #ffffff;">상품간략설명</span></th>
											<td><span style="font-size: 12px; color: #ffffff;">「잘라진
													카드조각이 재생된다면?」</span></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="guideArea">
								<br>
								<hr>
								<p class="info1">(최소 주문수량 1개 이상)</p>
							</div>
							<div id="totalProducts">
								<p class="info2">
									<img src="./img/Hot/ico_information.gif"> 수량을 선택해주세요.
								</p>
								<hr>
								<table id="payNumPrice">

									<colgroup>
										<col style="width: 40%;">
										<col style="width: 30%;">
										<col style="width: 20%;">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품명</th>
											<th scope="col">상품수</th>
											<th scope="col">가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><font color="cccccc"> <b>큰 카드 재생 마술</b>
											</font> <br> (Big card restore) <br> [어린이 학예회 마술도구]</td>
											<td><span class="quantity"> <input id="quantity"
													name="quantity_opt[]" value="1" type="text"> <a
													href="#none"> <img src="./img/Hot/btn_count_up.gif"
														alt="수량 증가" class="quantityUp">
												</a> <a href="#none"> <img
														src="./img/Hot/btn_count_down.gif" alt="수량 감소"
														class="quantityDown">
												</a>
											</span></td>
											<td class="right"><span class="quantity_price">6,500원
													<input type="hidden" name="option_box_price"
													class="option_box_price" value="6500" item_code>
											</span></td>
										</tr>
									</tbody>

									<tfoot>
										<tr>
											<td colspan="3"><strong>총 상품금액</strong> (수량) : <span
												class="total"> <strong> <em>6,500원</em>
												</strong> (1개)
											</span></td>
										</tr>
									</tfoot>
								</table>
							</div>
							<hr id="btnLine">

							<div class="">
								<div class="btnArea">
									<a href="#none" class="first hImg_01" onclick=""> <img
										src="./img/Hot/btn_buy_big.gif" alt="구매하기">
									</a> <a href="#none" class="hImg_01" onclick=""> <img
										src="./img/Hot/btn_cart_big.gif" alt="장바구니">
									</a> <a href="#none" class="hImg_01" onclick=""> <img
										src="./img/Hot/btn_wish2.gif" alt="장바구니">
									</a>
								</div>
								<!--<div id="naverChk_btn">
                                    <div id="" class="">
                                        <div id="" class="">
                                            <div class="nPay_btn">
                                                <div class="nPay_text">
                                                    <span class="nPay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span>
                                                </div>
                                                <table class="nPay_brn_list" cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                        <tr>
                                                            <td class="nPay_btn_item">
                                                                <a id="" href="#"
                                                                    class="nPay_btn_link nPay_btn_pay btn_green"
                                                                    style="box-sizing: content-box;" title="새창">
                                                                    <span class="nPay_blind">네이버페이 구매하기</span>
                                                                </a>
                                                            </td>
                                                            <td class="nPay_btn_item btn_width">
                                                                <a id="" href="#" class="nPay_btn_link nPay_btn_zzim"
                                                                    style="box-sizing: content-box;" title="새창">
                                                                    <span class="nPay_blind">찜하기</span>
                                                                </a>
                                                            </td>
                                                    </tbody>
                                                </table>
                                            </div>
                                            네이버페이 혜택 칸 만들지 말지
                                        </div>
                                    </div>
                                </div>-->
							</div>
						</div>
					</div>
				</div>
				<div class="">
					<div id="proDetail" class="d_step1">
						<div class="detail"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>