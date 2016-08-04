<%-- 
    Document   : addNewAnswer
    Created on : Dec 10, 2012, 2:02:50 PM
    Author     : Zahid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new answer</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/default.css"> 
    </head>
    <body>
        <form name="editAns" method="post" id="editAns" action="${pageContext.request.contextPath}/AddNewAnswerFormSubmit?questionId=${myQuestionId}">
            <div id="newAnswer">
                <input type="hidden" name="txtQuestionID" value="${myQuestionId}">
                <textarea name="txtBoxAnswer" cols="60" rows="4" style="border: 1px solid #000;"></textarea>
                <p>
                    <input type="submit" value="Add Answer">  
                </p>
            </div>
        </form>
    </body>
</html>
