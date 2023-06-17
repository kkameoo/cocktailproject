<%--
  Created by IntelliJ IDEA.
  User: khdg1
  Date: 2023-04-09
  Time: 오후 1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="css/generalcategory.css" />
</head>
<body>
<!--home/back/ title-->
<div class="btnhome">
    <button class="btn_home" onclick="location='/start.jsp'" >HOME</button>
</div>

<div class="cocktail-title">
    COCKTAIL
    <hr />
</div>

<div class="square">
    <div class="content">
        <div class="name">
            <%= request.getAttribute("qo") %>
        </div>

        <img class="exampleimg"src="<%= request.getAttribute("co") %>">
        <div class="keyword">#cherry, #orange peel, #vermouth, #bourbon</div>

        <div class="mater">
            <div class="mater_image">
                <div class="sul1">
                    <img class="sul" src="image/liquor.png">
                    <p class="sul-text">베르무트 3/4oz</p>
                </div>
                <div class="sul2">
                    <img class="sul2" src="image/liquor.png">
                    <p class="sul-text">버본 2+1/2oz</p>
                </div>
                <div class="fruit1">
                    <img class="fruit" src="image/honey.png">
                    <p class="furit-text">오랜지 1개껍질</p>
                </div>
                <div class="fruit2">
                    <img class="fruit2" src="image/lime.png">
                    <p class="furit-text">체리 1개</p>
                </div>
                <div class="material1">
                    <img class="material" src="image/bitter.png">
                    <p class="material-text">Angostura bitters 1대쉬</p>
                </div>
            </div>
        </div>
    </div>
</div>


<!--결과창 배열-->
</body>
</html>
