<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <!DOCTYPE html>
          <html>

          <head>
               <meta charset="UTF-8">
               <meta http-equiv="X-UA-Compatible" content="IE=edge">
               <meta name="viewport" content="width=device-width, initial-scale=1.0">
               <title>登出</title>
          </head>

          <body>
               <!-- 先將使用者名稱取出 -->
               <c:set var="memberName" value="${ LoginOK.name }" scope='request' />
               <!-- 移除放在session物件內的屬性物件 -->

               <!-- 下列敘述設定變數funcName的值為OUT，top.jsp 會用到此變數 -->
               <c:set var="funcName" value="OUT" scope="session" />
               <!-- 引入共同的頁首 -->
               <jsp:include page="../layout/navbar.jsp" />

               <c:if test='${ not empty  logoutBean}'>
                    ${ logoutBean.logout }
               </c:if>

               <%-- 重建一個全新的Session物件 --%>
                    ${pageContext.request.session}
                    <%-- 由ThanksForComing.jsp準備感謝訊息 --%>
                         <%-- <jsp:include page="ThanksForComing.jsp" /> --%>

                         <c:redirect url="/index.jsp" />
          </body>

          </html>