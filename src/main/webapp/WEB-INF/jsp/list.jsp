</html>
<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>课程列表</title>
    <%@include file="common/head.jsp" %>
</head>
<body >
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>课程列表</h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>课程</th>
                    <th>教师</th>
                    <th>学院限制</th>
                    <th>开课数量</th>
                    <th>已选数量</th>
                    <th>选课</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach  var="sk" items="${list}">
                    <tr>
                        <td>${sk.className}</td>
                        <td>${sk.teaName}</td>
                        <td>${sk.insName}</td>
                        <td>${sk.classNum}</td>
                        <td>${sk.classChooseNum}</td>
                        <td><a class="btn btn-info"
                               href="${pageContext.request.contextPath }/course/${sk.classId}" >选课</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</body>
</html>