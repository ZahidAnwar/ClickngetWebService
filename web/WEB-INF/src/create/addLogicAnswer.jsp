<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>

    </head>
    <body>
        <div>
            <form name="editLogicAns" method="post" id="editLogicAns" action="${pageContext.request.contextPath}/LogicAnsFormSubmit?questionId=${myQues}&surveyId=${mySurveyId}">
                <p>Set logic on the answer to hide the question :
                    <input type="hidden" name="myQId" value="${myQues}">
                    <input type="hidden" name="mySId" value="${mySurveyId}">
                    <span class="txtRight"> 
                        <select class="editTextBox" name="txtAnsLogicValue">

                            <c:forEach var="row" items="${myAnswer}">
                                <c:set var="s" value="${row.ansId}"/>
                                <option value="${row.ansId}" ${ansValue == s? 'selected' : ''}>${row.answer}</option>  

                            </c:forEach>

                        </select>
                    </span>
                </p>
                <input type="submit" value="Add">
            </form>
        </div>
    </body>
</html>