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
    
<div class="questionAnswer">
    <c:forEach var="answer" items="${row.option}">

        <%-- radio --%>
        <div class="qLabel">
        <input type="radio" value="${answer.answer}"><label class="labelRadio">${answer.answer}</label><br>
        </div>
        <c:if test="${answer.answerType==1}">
          <%-- textBox --%>
            <div class="otherMove">
            <input type="text" style=" width: 320px; border: 1px solid #000;"
                   value="${useranswer.valueString}">    
            </div>
             
        </c:if>
    </c:forEach>
</div>
</div>
