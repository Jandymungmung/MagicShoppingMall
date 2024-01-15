<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>footer</title>
<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<hr>
	<div id="footer">
		<div id="footer_inner">
			<ul>
				<li><a href="" class="bottom">회사소개</a></li>
				<li><a href="" class="bottom">이용약관</a></li>
				<li><a href="" class="bottom">쇼핑몰 이용안내</a></li>
				<li><a href="" class="bottom">개인정보취급방침</a></li>
				<li><a href="" class="bottom">고객센터</a></li>
			</ul>
		</div>
		<hr>

		<div id="footer_inner2">
			<div id="call">
				<p>
					<strong>CALL CENTER</strong>
				</p>
				<ul>
					<li id="phone"><font color="darkcyan" size="2px"> <b>
								010-7239-9336 </b> <br> <b> 02-123-4567</b>
					</font></li>
					<li><span>평일 - </span> 오전 09:30 ~ 오후 07:00</li>
					<li><span>토 - </span> 오전 10:30 ~ 오후 06:00</li>
					<li><span>점심시간 - </span> 오전 12:00 ~ 오후 01:00</li>
					<li><span>일 / 공휴일 - </span> 휴무</li>
				</ul>
			</div>

			<div id="bank">
				<p>
					<strong>BANK INFO</strong>
				</p>
				<ul>
					<li id="bossName"><font color="darkcyan" size="2px"> <b>
								예금주 : 엄승민 </b>
					</font></li>
					<li>국민은행: 1234-567890-12312</li>
					<li>우리은행: 1234-567890-12312</li>
					<li>기업은행: 1234-567890-12312</li>
					<li>신한은행: 1234-567890-12312</li>
				</ul>
				<select class="bank_list" onchange="window.open(this.value);"
					name="select">
					<option value>인터넷뱅킹 바로가기</option>
					<option value="http://www.kbstar.com">국민은행</option>
					<option value="http://www.scfirstbank.com">제일은행</option>
					<option value="http://www.wooribank.com">우리은행</option>
					<option value="http://www.kiupbank.co.kr">기업은행</option>
					<option value="http://www.kjbank.com">광주은행</option>
					<option value="http://www.daegubank.co.kr">대구은행</option>
				</select>
			</div>

			<div id="company">
				<p>
					<strong>COMPANY INFO</strong>
				</p>
				<ul>
					<li id="companyInfo"><font color="darkcyan" size="2px">
							<b> 상호 : NEO MAGIC </b>
					</font></li>
					<br>
					<li>대표 : 엄승민</li>
					<li>대표 전화 : 010-7239-9336 / 02-123-4567</li>
					<li>주소 : 허리도 가늘군 다치면 부러지리 123</li>
					<li>사업자 등록번호: 123-45-67890</li>
					<li>통신판매업 신고: 제-0123-허리가늘-456호</li>
					<li>개인정보관리책임자: 엄승민 (seungmin377@naver.com)</li>
				</ul>
			</div>
		</div>
		<div id="footer_inner3">
			<div id="add">
				<p>
					<strong>RETURN ADDRESS</strong>
				</p>
				<ul>
					<li>허리도 가늘군 다치면 부러지리 123 1층 Neo Magic</li>
					<br>
					<li>Tel. 010-7239-9336</li>
					<br>
					<li>( 대한통운 택배사를 이용 부탁드립니다. )</li>
				</ul>
			</div>
			<div id="icon">
				<ul>
					<li><a href="http://cafe24.com/" target="_blank"> <img
							src="./img/footer_ico_01.png" alt="카페24">
					</a></li>
					<li><a
						href="http://ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2010383018630200124&area1=&area2=&currpage=1&searchKey=04&searchVal=1380977942&stdate=&enddate="
						target="_blank"> <img src="./img/footer_ico_02.png"
							alt="사업자정보확인">
					</a></li>
					<li><a href="https://www.doortodoor.co.kr/" target="_blank">
							<img src="./img/footer_ico_03.png" alt="CJ대한통운">
					</a></li>
					<li><a
						href="https://iniweb.inicis.com/popup/common/popup_escrow_notice.jsp?mid=ECAbnbm861"
						target="_blank"> <img src="./img/footer_ico_04.png" alt="이니시스">
					</a></li>
				</ul>
			</div>
		</div>
		<div id="footer_inner4">
			<div id="form_01">
				<h6 id="copyright">
					Copyright @ 2023 <strong>Neo Magic.</strong> All rights reserved.
				</h6>
			</div>
			<div id="warning">
				<h6>
					<strong>Neo Magic</strong> 의 허가없이 사이트 내 디자인 및 이미지등을 무단으로 사용할 수
					없습니다.
				</h6>
			</div>
		</div>
	</div>
	<div id="back_top">
		<span> <img src="./img/icon/btn_top_off.png" class="btn_off"
			alt="화살표"> <img src="./img/icon/btn_top_on.png" class="btn_on"
			alt="TOP">
		</span>
	</div>
</body>
</html>