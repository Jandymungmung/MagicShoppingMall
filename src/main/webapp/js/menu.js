const menu = document.createElement("menu");
menu.innerHTML=`<ul class="contents">
<li><a href="">전체 보기</a></li>
<li><a href="">카드 마술</a></li>
<li><a href="">동전 마술</a></li>
<li><a href="">플레잉 카드</a></li>
<li><a href="">클로즈업</a></li>
<li><a href="">팔러/스테이지</a></li>
<li><a href="">파이어/플래시</a></li>
<li><a href="">DVD/서적</a></li>
<li><a href="">악세서리</a></li>
</ul>`;

menu.id = "menu";

document.addEventListener("DOMContentLoaded", () => {
    const body = document.querySelector("body");
    body.insertBefore(menu, body.childNodes[2]);
})