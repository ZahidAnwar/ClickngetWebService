
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>      
    </head>
    <body>
  <div id="title" style=" width: 840px; background-color: #D9D9D4">
    <c:forEach var="row1" items="${surveyList}">
        <form name="editTitle" method="post" id="editTitle" action="${pageContext.request.contextPath}/EditTitleFormSubmit?surveyID=${row1.surveyID}">
            <input type="hidden" name="txtsurvey_id" value="${row1.surveyID}">

            <p>Survey Title: </p>
            <p>
                <textarea name="txtSurTitle" cols="60" rows="5" style="border: 1px solid #000;">${row1.surveyTitle}</textarea> 
            </p>
            <%--<input type="text" name="txtSurTitle" value="${row1.surveyTitle}">--%>

            <p>Sub Title: </p>
            <p>
                <textarea name="txtSubTitle" cols="60" rows="5" style="border: 1px solid #000;">${row1.subTitle}</textarea>   
                <%--<input type="text" name="txtSubTitle" value="${row1.subTitle}">--%>
            </p>
            <div class="updateButton" style="width: 100%; background-color: #A4A4A4; text-align: right;">
                <input type="submit" value="Cancel" onclick="return clickCancel(${row1.surveyID})">  
                <input type="submit" value="Update"> 
            </div>
        </form>
    </c:forEach>
</div>
     
    </body>
</html>
