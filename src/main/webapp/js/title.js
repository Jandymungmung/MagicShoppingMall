const title = document.createElement("title");
title.innerHTML = `<img src="/img/title/title.jpg">`;
title.id = "title";

document.addEventListener("DOMContentLoaded", () => {
    const body = document.querySelector("body");
    body.insertBefore(title, body.childNodes[0]);
});