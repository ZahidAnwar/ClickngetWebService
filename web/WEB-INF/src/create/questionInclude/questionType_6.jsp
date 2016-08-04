<div class="questionText" id="question${row.uid}">
    ${row.question}

</div>
    <%--
    <div class="questionText" id="question${row.uid}">
        ${row.questionOrder}. ${row.question}
    </div>
    --%>
    
<div id="editDelete${row.uid}" class="editBox">
    <span class="editDelete">
        <img title="Edit Survey Title" src="${pageContext.request.contextPath}/media/design.png" width="24px" height="18px"/> 
        <a href="${pageContext.request.contextPath}/EditQuestion?questionId=${row.uid}&surveyId=${row.suveryId}" >Edit Question</a>
         <%-- 
        <a name="desOnClick${row.uid}" 
           onclick="ajaxUp('${pageContext.request.contextPath}/EditQuestion?questionId=${row.uid}&surveyId=${row.suveryId}','${row.uid}',null)" 
           href="#">Edit Question</a>
       --%>


    </span>
    <span class="editDelete">
           <%--    <a name="ans${row.uid}" 
           onclick="ajaxUp('${pageContext.request.contextPath}/EditAnswer?questionId=${row.uid}','${row.uid}',null)" 
           href="#">Edit Answer</a> --%>
        <img title="Edit Survey Title" src="${pageContext.request.contextPath}/media/design.png" width="24px" height="18px"/>
        <a href="${pageContext.request.contextPath}/EditAnswer?questionId=${row.uid}" >Edit Answer</a>

    </span>
    <span class="editDelete">
        <img title="Edit Survey Title" src="${pageContext.request.contextPath}/media/delete.png" width="16px" height="14px"/>
        <a href="${pageContext.request.contextPath}/DeleteQuestion?questionId=${row.uid}&surveyID=${row.suveryId}" onclick="return deleteConfirm()">Delete</a> </span>
</div>


    <div id="${row.uid}">
  <%--       
        <div class="questionAnswer">


    <c:forEach var="answer" items="${row.option}">
        <c:choose>
            <c:when test="${answer.answerType==2}">
                ${answer.answer}<br>
                <c:set var="key" value="${row.uid}_yes"/>
                <c:set var="useranswer" value ="${answers[key]}" /> 
                
                    <c:out value="${test}" escapeXml="true"/><br>
            
                <input type="text" value="${useranswer.valueString}"
                       name="${row.uid}_yes" style=" width: 320px; border: 1px solid #000;"><br> 
            </c:when>
            <c:otherwise>
                <c:set var="key" value="${row.uid}"/>                
                <c:set var="useranswer" value ="${answers[key]}" />
              
                <div class="qLabel">
                <input type="radio" name="${row.uid}" ${useranswer.valueString == answer.answer ? "checked='checked'" :""} 
                       value="${answer.answer}">${answer.answer}<br>
                </div>
            </c:otherwise>
        </c:choose>     
    </c:forEach> 

</div>
        
   --%>    

    <div class="questionAnswer">


        <c:forEach var="answer" items="${row.option}">
            <c:choose>
                <c:when test="${answer.answerType==2}">
                    ${answer.answer}<br>
                        <input type="text" name="${row.uid}" style=" width: 320px; border: 1px solid #000;"><br> 
                </c:when>
                <c:otherwise>
                    <div class="qLabel">
                        <input type="radio" value="${answer.answer}"><label class="labelRadio">${answer.answer}</label><br>
                    </div>
                </c:otherwise>
            </c:choose>     
        </c:forEach> 

    </div>
        
</div>