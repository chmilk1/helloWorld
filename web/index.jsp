<% String parciple = "_!#@(%*%*($@!(!(#@!"; %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: league
  Date: 11/2/16
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <link type="text/css" rel="stylesheet" href="/stylesheets/main.css"/>
    <title><%=parciple%></title>
  </head>
  <body>
  <%
    String guestbookName = request.getParameter("guestbookName");
    if (guestbookName == null){
      guestbookName = "default";
    }
    pageContext.setAttribute("guestbookName", guestbookName);
    UserService service = UserServiceFactory.getUserService();
    User name = service.getCurrentUser();
    if (name != null) {
      pageContext.setAttribute("user", name);
  %>

  <p>Hello, ${fn:escapeXml(user.nickname)}! (You can
    <a href="<%= service.createLogoutURL(request.getRequestURI()) %>">sign out</a>.)</p>

  <%
  } else {
  %>
  <p>Hello!
      <a href="<%= service.createLoginURL(request.getRequestURI()) %>">Sign in</a>
      to include your name with greetings you post.</p>

  <% } %>
  </body>
</html>
