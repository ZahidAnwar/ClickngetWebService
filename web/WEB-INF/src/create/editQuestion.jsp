
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/src/common/menu/edit.jsp" %>

<div id="NoTabContent">
    <div class="containerx grid">
        <div class="fieldset" style="margin-top: 20px;">
            <c:forEach var="row" items="${questions}">

                <form name="editQes" method="post" id="editQes" action="${pageContext.request.contextPath}/EditQuesFormSubmit?surveyID=${row.suveryId}">
                    <table>
                        <tr>
                            <td style=" text-align: left;">
                                <div class="questionTextEdit">
                                    Question<br>
                                    <textarea id="modQuestion" name="modQuestion" cols="60" rows="5" style="border: 1px solid #000;">${row.question}</textarea>
                                </div>   
                            </td>
                            <td style=" text-align: right;">
                                <div id="questionTypeEdit">
                                    <p>Question Option</p>
                                    <hr style="border: 1px #FFF dashed;">
                                    <input type="hidden" name="txtQuestionID" value="${row.uid}" id="txtQuestionID">
                                    <input type="hidden" name="txtSurveyID" value="${row.suveryId}">


                                    <p>Logic (Current: 
                                    <c:choose>
                                        <c:when test="${row.questionLogic==1}">
                                            Yes
                                        </c:when>

                                        <c:otherwise>
                                            No
                                        </c:otherwise>
                                    </c:choose>


                                    ): 

                                    <c:choose>

                                        <c:when test="${row.questionLogic==1}">
                                            <span class="txtRight">  
                                                <img title="Delete Question" src="${pageContext.request.contextPath}/media/delete.png" width="10px" height="12px"/>                              

                                                <a href="${pageContext.request.contextPath}/RemoveLogic?questionId=${row.uid}&surveyId=${row.suveryId}" onclick="return deleteConfirm()">
                                                    Remove Logic</a>
                                            </span>

                                        </c:when>

                                        <c:otherwise>
                                            <span class="txtRight">
                                                <select class="editTextBox" name="txtQesLogic" id="txtQesLogic" onchange="checkLogic(this)">
                                                    <option value="0">Logic</option> 
                                                    <option value="1">Yes</option>  
                                                    <option value="0">No</option>   
                                                </select>
                                            </span>     
                                            </p>

                                            <div id="logicOption" style="display: none;">
                                                <p>Set Logic to Hide/Show Question : 
                                                    <span class="txtRight">   

                                                        <select class="editTextBox" name="txtQuesValue" id="txtQuesValue" onchange="checkLogicAns(this, ${row.suveryId}, 
                                                                ${row.uid})">

                                                            <c:forEach var="var" items="${myQuestion}">
                                                                <c:set var="s" value="${var.id}_${var.question}"/>
                                                                <option value="${var.id}_${var.question}" ${currentOrder == s? 'selected' : ''}>${var.question}</option>  

                                                            </c:forEach>

                                                        </select>

                                                    </span> 
                                                </p>
                                                <div id="logicAns">

                                                </div>

                                            </div>
                                        </c:otherwise>
                                    </c:choose>

                                    <p>Page (Current: ${row.pageId}):   
                                        <span class="txtRight">

                                            <select class="editTextBox" name="txtPage" id="txtPage">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                                <option value="13">13</option>
                                                <option value="14">14</option>
                                                <option value="15">15</option>
                                                <option value="16">16</option>
                                                <option value="17">17</option>
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                                <option value="20">20</option>
                                            </select> 

                                            <%--<input class="editTextBox" type="text" name="txtPage" value="${row.pageId}">--%>



                                        </span></p>

                                    <p>Question Order (Current: ${row.questionOrder}):
                                        <span class="txtRight">
                                            <select class="editTextBox" name="questionOrder" id="questionOrder">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                                <option value="13">13</option>
                                                <option value="14">14</option>
                                                <option value="15">15</option>
                                                <option value="16">16</option>
                                                <option value="17">17</option>
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                                <option value="20">20</option>
                                                <option value="21">21</option>
                                                <option value="22">22</option>
                                                <option value="23">23</option>
                                                <option value="24">24</option>
                                                <option value="25">25</option>
                                                <option value="26">26</option>
                                                <option value="27">27</option>
                                                <option value="28">28</option>
                                                <option value="29">29</option>
                                                <option value="30">30</option>
                                                <option value="31">31</option>
                                                <option value="32">32</option>
                                                <option value="33">33</option>
                                                <option value="34">34</option>
                                                <option value="35">35</option>
                                                <option value="36">36</option>
                                                <option value="37">37</option>
                                                <option value="38">38</option>
                                                <option value="39">39</option>
                                                <option value="40">40</option>
                                            </select>  

                                        </span>
                                    </p>

                                    <p>Question Type (Current: 
                                    <c:choose>
                                        <c:when test="${row.questiontype==1}">
                                            Multiple
                                        </c:when>
                                        <c:when test="${row.questiontype==2}">
                                            Descriptive with small text box
                                        </c:when>

                                        <c:when test="${row.questiontype==3}">
                                            Multiple + Descriptive with 'other'
                                        </c:when>

                                        <c:when test="${row.questiontype==4}">
                                            Question with no answer
                                        </c:when>

                                        <c:when test="${row.questiontype==5}">
                                            Descriptive with large text box
                                        </c:when>

                                        <c:when test="${row.questiontype==6}">
                                            Multiple + Descriptive with 'if yes'
                                        </c:when>

                                        <c:when test="${row.questiontype==7}">
                                            Multiple + Descriptive with 'if No'
                                        </c:when>

                                        <c:otherwise>
                                            No option found
                                        </c:otherwise>
                                    </c:choose>   
                                    ): 
                                    <span class="txtRight">
                                        <select class="editTextBox" name="txtQuesType" id="txtQuesType">
                                            <option value="1">Multiple</option>  
                                            <option value="2">Descriptive with small text box</option>  
                                            <option value="3">Multiple + Descriptive with 'other'</option>  
                                            <option value="4">Question with no answer</option>  
                                            <option value="5">Descriptive with large text box</option> 
                                            <option value="6">Multiple + Descriptive with 'if yes'</option>  
                                            <option value="7">Multiple + Descriptive with 'if No'</option>  
                                        </select>
                                    </span>
                                    </p>

                                    <p>Required (Current: 
                                    <c:choose>
                                        <c:when test="${row.questionreq==1}">
                                            Yes
                                        </c:when>

                                        <c:otherwise>
                                            No
                                        </c:otherwise>
                                    </c:choose>
                                    ): 
                                    <span class="txtRight">
                                        <select class="editTextBox" name="txtRequired" id="txtRequired">
                                            <option value="1">Yes</option>  
                                            <option value="0">No</option>   
                                        </select>
                                    </span>
                                    </p>



                                </div>  
                            </td>
                        </tr>
                    </table>

                    <div id="submitButton">
                        <input type="submit" value="Cancel" onclick="return clickCancel(${row.suveryId})">
                        <input type="submit" value="Update">
                    </div>
                </form>
            </c:forEach>

        </div>

    </div>
</div>


<%@include file="/WEB-INF/src/common/fotter.jsp" %>