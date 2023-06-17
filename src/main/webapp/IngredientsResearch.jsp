<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-19
  Time: 오전 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>generalrecommend</title>
  <link rel="stylesheet" type="text/css" href="css/generalrecommend.css">


</head>
<body>
<!-- 홈 백 버튼 -->
<div class="btnhome" >
  <button class="btn_home" onclick="location='/start.jsp'">HOME</button>
</div>
<div class="btnbackspace" >
  <button class="btn_backspace"onclick="history.back()">BACK</button>
</div>

<div class="cocktail-title">
  COCKTAIL
  <hr />
</div>

<div id="container">
  <div>
    <div>
      <input id="display" type="text" />
      <button onclick="del()">삭제</button>
      <button onclick="reset()">초기화</button>
    </div>
    <div class="category">
      <form name="Form" action="/IngredientsListServlet" method="post">
      <p class="alcol"></p>
      <button value="진" name="ingre">진</button>
      <button value="보드카" name="ingre">보드카</button>
      <button value="위스키" name="ingre">위스키</button>
      <button value="브랜디" name="ingre">브랜디</button>
      <button value="럼" name="ingre">럼</button>
      <button value="데킬라" name="ingre">데킬라</button>
      </form>
    </div>
    <div class="category">
      <p class="fruit"></p>
      <button value="honey" onclick="addOutput('시럽 ')">시럽</button>
      <button value="egg" onclick="addOutput('달걀 ')">달걀</button>

    </div>
    <div class="category">
      <p class="juice"></p>
      <button value="juice" onclick="addOutput('주스 ')">주스</button>
      <button value="water" onclick="addOutput('탄산수 ')">탄산수</button>
    </div>
  </div>
</div>
<!-- Start 버튼 추가 -->
<div id="btn_rec">
  <button id="btn_general" class="btn_general">START</button>
</div>
</div>
<script src="js/generalrecommend.js"></script>



</body>
</html>
