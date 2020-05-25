<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25.05.2020
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" pageEncoding="UTF-8" %>
<%-- Импортировать JSTL-библиотеку --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Импортировать собственную библиотеку тегов --%>
<%@taglib prefix="ad" uri="http://bsu.rfe.java.teacher.tag/ad" %>
<%-- Извлечь JavaBean требуемого объявления --%>
<ad:getAds id="${param.id}" var="ad" />
<ad:capsAd ad="${ad}"/>
<%-- Переадресовать на страницу кабинета --%>
<c:redirect url="/cabinet.jsp" />