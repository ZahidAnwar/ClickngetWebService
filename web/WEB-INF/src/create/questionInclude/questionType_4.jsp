<div class="questionText" id="question${row.uid}">
    ${row.question}

</div>
    <%--
    <div class="questionText" id="question${row.uid}">
        ${row.questionOrder}. ${row.question}
    </div>
    --%>
<div id="editDelete${row.uid}" class="editBoxNoAns">
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
        <img title="Edit Survey Title" src="${pageContext.request.contextPath}/media/delete.png" width="16px" height="14px"/>
        <a href="${pageContext.request.contextPath}/DeleteQuestion?questionId=${row.uid}&surveyID=${row.suveryId}" onclick="return deleteConfirm()">Delete</a> </span>
</div>
    <div id="${row.uid}">

<div class="answerWithNoText">
    ${answer.answer} 
</div>
</div>