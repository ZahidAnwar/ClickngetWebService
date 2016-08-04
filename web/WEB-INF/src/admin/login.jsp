<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Welcome</title>
        <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/style/default.css"> 
	<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/lib/prototype17.js"></script>
    	<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/lib/ajax_helper_1.js"></script>
    </head>
<body>


<center>
<div id="loginPage">
    <img class="imgClass" src="${pageContext.request.contextPath}/media/2.gif" /> 
   <%-- <form method="post" action="<c:url value="/LoginPost?user=${username}"/>" >--%>
     <form method="post" action="${pageContext.request.contextPath}/LoginPost">
         <table style="padding-top: 20px;">
        <tr>
            <td colspan="3">
                <s:actionerror cssClass="errorAnswerBlank"/>
                <s:fielderror cssClass="errorAnswerBlank"/>
            </td>
        </tr>
        <tr>
            <td><span style="color: #000; padding: 10px;">User name: </span></td>
            <td><span style="color: #000; padding: 10px;"><input type="text" name="username" value="${username}"></span></td>
            <td></td>
        </tr>
        <tr>
            <td><span style="color: #000; padding: 10px;">Password: </span></td>
            <td><span style="color: #000; padding: 10px;"><input type="password" name="password"></span></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="3" align="right"><input type="submit" value="Login"></td>
        </tr>
    </table>
   </form>
</div>
</center>

<%@include file="/WEB-INF/src/common/fotter.jsp" %>