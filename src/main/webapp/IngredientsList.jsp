<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-19
  Time: 오후 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결과창 미리보기</title>
    <link rel = "stylesheet" href="css/generallist.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
<!-- 홈 백 버튼 -->

<div class="btnhome">
    <button class="btn_home" onclick="location='/start.jsp'">HOME</button>
</div>
<div class="btnbackspace">
    <button class="btn_backspace" onclick="history.back()">BACK</button>
</div>
<div class="cocktail-title">
    COCKTAIL
    <hr/>
</div>

<c:forEach items="${allList}" var="item" varStatus="i">
    <div class="square">
        <div class="content">
            <img class="exampleimg"src="<c:out value="${item.img}"/>">
            <div class="name">
                <a href="<c:url value="/GeneralCatrgoryServlet?name=${item.name}&img=${item.img}" />"><c:out value="${item.name}"/></a>
            </div>
            <div class="key">추천할 때 클릭한 키워드</div>
            <br>
            <button class="btn_next">More</button>
        </div>
    </div>
    <a id="back-to-top"></a> <!--맨위로 이동 버튼 -->
</c:forEach>
<script src="js/generallist.js"></script>
</body>
</html>