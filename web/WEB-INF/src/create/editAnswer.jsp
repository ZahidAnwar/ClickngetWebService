
<%@include file="/WEB-INF/src/common/menu/edit.jsp" %>

<div id="NoTabContent">
    <div class="containerx grid">
        
        <div class="fieldset" style="margin-top: 20px;">
       
         <table style=" padding: 10px;">
         <c:forEach var="row" items="${questions}">
             <form name="editAns" method="post" id="editAns" action="${pageContext.request.contextPath}/EditAnsFormSubmit?surveyID=${row.suveryId}">
                 <input type="hidden" value="${row.suveryId}" name="mySurveyId">
            <input type="hidden" value="${row.uid}" name="txtQuestionIDAns">
            <c:forEach var="answer" items="${row.option}">
               
                    <tr>
                        <td>
                            <input type="hidden" value="${answer.answerId}" name="txtAnswerID">
                            <div class="questionText">
                                <textarea id="${answer.answerId}" name="txtBoxAnswer" cols="60" rows="2" style="border: 1px solid #000;">${answer.answer}</textarea>
                                <div id="addNewAns" style=" float:right;">&nbsp;<img title="Delete Question" src="${pageContext.request.contextPath}/media/delete.png" width="10px" height="16px"/>
                                    <a href="${pageContext.request.contextPath}/DeleteAnswer?answerID=${answer.answerId}&questionId=${row.uid}" onclick="return deleteConfirm()">
                                        Delete Answer</a> 
                                </div>
                            </div> 

                        </td>
                        <td>
                            <div id="answerType">
                                <p>Answer Option</p>
                                <hr style="border: 1px #fff dashed;">
                                                                          <p>
                                              <c:choose>
                                                <c:when test="${answer.answerType==1}">
                                                        If Other and required to check text box value
                                                    </c:when>
                                                    <c:when test="${answer.answerType==2}">
                                                        If Yes and required to check text box value
                                                    </c:when>
                                                        
                                                    <c:when test="${answer.answerType==3}">
                                                        If No and required to check text box value
                                                    </c:when>

                                                    <c:otherwise>
                                                        (No Type Defined)
                                                    </c:otherwise>
                                              </c:choose>  

                                                </p>  
                                
                                <c:choose>
                                    <c:when test="${answer.answerType==0}">
                                      <p style=" padding: 5px;">Answer Type : 
                                
                                    <span class="txtRight">

                                        <select class="editTextBox" name="txtAnsType" id="${answer.answerId}">
                                            <option value="0">No Type</option>  
                                            <option value="1">If Other and required to check text box value</option>  
                                            <option value="2">If Yes and required to check text box value</option> 
                                            <option value="3">If No and required to check text box value</option> 
                                        </select>
                                    </span>
                                      </p> 
                                    </c:when>

                                    <c:otherwise>
                                        <p style="text-align: right;">
                                                    <img title="Delete Question" src="${pageContext.request.contextPath}/media/delete.png" width="8px" height="10px"/>
                                                <a href="${pageContext.request.contextPath}/RemoveType?answerID=${answer.answerId}&questionId=${row.uid}" onclick="return deleteConfirm()">
                                                        Remove Type</a>
                                                </p>
                                    </c:otherwise>
                                </c:choose>                                

                            </div>   
                        </td>
                    </tr>

            </c:forEach>
            <tr>
                <td colspan="2">
                    <div id="${row.uid}" style=" padding: 10px;">
                        
                          <a name="desOnClick${stat.index}" 
                                           onclick="ajax_UpdaterURL('${pageContext.request.contextPath}/AddNewAnswer?myQuestionId=${row.uid}','${row.uid}',null)" 
                                           href="#"><img title="Add New Question" src="${pageContext.request.contextPath}/media/add.png" width="14px" height="18px"/> Add New Answer</a>

                    </div>  
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div id="submitButton">
                        <input type="submit" value="Cancel" onclick="return clickCancel(${row.suveryId})">
                        <input type="submit" value="Update">
                    </div> 
                </td>
            </tr>
            </form>
        </c:forEach>
        </table>
    </div>


        
</div>
</div>


<%@include file="/WEB-INF/src/common/fotter.jsp" %>

