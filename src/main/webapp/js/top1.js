const gnb = document.createElement("section");
gnb.innerHTML = `<ul>
<li class="login"><a href = "">로그인</a></li>
<li><a href="">회원가입</a></li>
<li><a href="">장바구니</a></li>
<li><a href="">마이페이지</a></li>
<li><a href="">게시판</a></li>
<li><a href="">즐겨찾기</a></li>
</ul>`;
gnb.id = "gnb";

document.addEventListener("DOMContentLoaded", () => {
    const body = document.querySelector("body");
    body.insertBefore(gnb, body.childNodes[0]);
})