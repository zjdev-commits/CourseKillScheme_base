</html>
<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <title>登录页面</title>
    <%--
      Created by IntelliJ IDEA.
      User: Administrator
      Date: 2019/5/10
      Time: 15:35
      To change this template use File | Settings | File Templates.
    --%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file:// 引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<form id="form" class="form-horizontal" action="${pageContext.request.contextPath }/login" method="post">
    <div class="form-group">
        <label for="userid" class="col-sm-2 control-label">UserId</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="userid" name="userid" placeholder="userid" >
        </div>
    </div>
    <div class="form-group">
        <label for="userpass" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-3">
            <input type="password" class="form-control" id="userpass" name="userpass" placeholder="userpass">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button id="button-submit" type="submit" class="btn btn-default">Sign in</button>
        </div>
    </div>
</form>


<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script>
    $(function () {
        $("#button-submit").click(function () {
            $("#form").submit();
        })
    })
</script>
</body>
</html>
