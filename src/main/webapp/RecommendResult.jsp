<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="css/generalcategory.css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
<!--home/back/ title-->
<div class="btnhome" onclick="location='/start.jsp'">
    <button class="btn_home">HOME</button>
</div>

<div class="cocktail-title">
    COCKTAIL
    <hr/>
</div>

<div class="square">

    <div class="content">
        <div class="name">
            <%= request.getAttribute("qo") %>
        </div>
        <img class="exampleimg"src="<%= request.getAttribute("co") %>">
        <div class="keyword">설명</div>
        <div class="mater">
    <%= request.getAttribute("go") %>
    <%= request.getAttribute("so") %>
        </div>
    </div>
</div>
<a id="back-to-top"></a> <!--맨위로 이동 버튼 -->
</body>
</html>