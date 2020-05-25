<%@ tag pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="ad" required="true" rtexprvalue="true"
              type="laba9.entity.Ad" %>
<%-- Кнопка caps показывается только если:
1) пользователь аутентифицирован (authUser!=null);
2) передано текущее объявление (ad!=null);
3) id автора объявленния и id аутентифицированного пользователя
совпадают --%>
<c:if test="${sessionScope.authUser!=null && ad!=null &&
ad.authorId==sessionScope.authUser.id}">
    <div style="float: left; margin: 10px; margin-top: 20px; padding: 5px
0px; border: 1px solid black; background-color: #ccc; width: 150px; textalign: center">
        <a href="<c:url value="/capsAd.jsp">
<c:param name="id" value="${ad.id}" />
</c:url>">CAPS</a>
    </div>
</c:if>