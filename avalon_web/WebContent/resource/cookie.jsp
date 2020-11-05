<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP</title>
</head>
<body>
    <%
        Cookie cookie = new Cookie("name", "tianxin");  // 创建cookie对象
        cookie.setMaxAge(60*60*24);                     // 保存一天，单位秒
 
        // 注意是通过response对象的addCookie方法设置cookie
        response.addCookie(cookie);                     // 添加cookie
    %>
 
    <%-- 取出所有cookie --%>
    <%
        // 注意是通过request对象进行取得，返回的是一个Cookie数组
        Cookie[] cookies = request.getCookies();        // 获取所有的cookie
 
        // 取出所有的cookie
        // 通过cookie的getName和getValue方法
        for (int i = 0; i < cookies.length; i++) {
    %>
            <%=cookies[i].getName() + "-->" + cookies[i].getValue()%>
    <%
        }
    %>
</body>
</html>