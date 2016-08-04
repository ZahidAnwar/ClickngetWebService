
<%@include file="/WEB-INF/src/common/menu/edit.jsp" %>

<div id="NoTabContent">
    <h1>Edit Survey Title, Questions And Answers</h1>
    <div class="containerx grid">
        <form name="SurveyQuestion" method="post" id="SurveyQuestion" action="${pageContext.request.contextPath}/Continue">
            <div class="fieldset">
                <div id="title">
                    <table style=" width: 950px; background-color: #D9D9D4; padding-left: 10px; padding-right: 10px;">
                        <thead>
                            <tr>
                                <th style=" text-align: left;">
                                    Title
                                </th>
                                <th style=" text-align: left;">
                                    Sub Title
                                </th>

                                <th style=" text-align: left;">
                                    Last updated
                                </th>  
                            </tr>

                        </thead>


                        <c:forEach var="row1" items="${surveyList}">
                            <tr>
                                <td colspan="3">
                                    <hr>

                                </td>
                            </tr>
                            <tr>
                                <td>
                                    ${row1.surveyTitle}
                                    <p class="created">Created <fmt:formatDate value="${row1.created}" pattern="MMMM, dd yyyy" /></p>
                            </td>
                            <td>
                                <p class="created">${row1.subTitle}</p>
                            </td>
                            <td>
                            <fmt:formatDate value="${row1.updated}" pattern="dd/MM/yyyy" />
                            </td>
                            </tr> 
                            <tr>
                                <td colspan="3" style="text-align: right;">
                                    <span class="editDelete">                   
                                        <a name="desOnClick${stat.index}" 
                                           onclick="ajax_UpdaterURL('${pageContext.request.contextPath}/EditTitle?surveyId=${row1.surveyID}','${row1.surveyID}',null)" 
                                           href="#">
                                            <span style=" padding-left: 80px; padding-top: 20px; position: relative;">
                                            <img title="Edit Survey Title" src="${pageContext.request.contextPath}/media/design_dark.png" width="23px" height="20px"/>
                                            </span>
                                            Edit</a>
                                      </span>


                                    <%--<span class="editDelete"><a href="${pageContext.request.contextPath}/EditTitle?surveyId=${row1.surveyID}" >Edit</a></span> --%> 
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div id="${row1.surveyID}">

                                    </div>
                                </td>
                            </tr>

                            <c:set var="key" value="${row1.surveyID}"/>  

                        </c:forEach>

                    </table>
                </div>
                <div id="addhideInputBox">

                    <c:choose>

                        <c:when test="${empty questions}">
                              <div id="hiden">
                              
                              

                            <p style=" padding-left: 40px; padding-right: 60px;">Unfortunately there are no questions or answers available. To add new question, please click at the following link 
                                  + Add New Question</a> 
                            </p>
                            </div>
                        </c:when>

                        <c:otherwise>
                            <c:forEach var="row" items="${questions}">
                                <div class="question">


                                    <c:choose>
                                        <c:when test="${row.questiontype==2}">
                                            <%@include file="questionInclude/questionType_2.jsp" %>
                                        </c:when>
                                        <%-- Option=3 Multiple + description --%>
                                        <c:when test="${row.questiontype==3}"> 
                                            <%@include file="questionInclude/questionType_3.jsp" %>
                                            <%-- --%>
                                        </c:when>
                                        <c:when test="${row.questiontype==4}">
                                            <%@include file="questionInclude/questionType_4.jsp" %>
                                        </c:when>
                                        <%-- Option=5 Descriptive large--%>
                                        <c:when test="${row.questiontype==5}">
                                            <%@include file="questionInclude/questionType_5.jsp" %>
                                        </c:when>
                                        <%-- Option=6 Multiple + description + if yes/if no--%>
                                        <c:when test="${row.questiontype==6}">
                                            <%@include file="questionInclude/questionType_6.jsp" %>
                                        </c:when>
                                        <c:when test="${row.questiontype==7}">
                                            <%@include file="questionInclude/questionType_7.jsp" %>
                                        </c:when>
                                        <c:otherwise>
                                            <%@include file="questionInclude/questionType_1.jsp" %>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                  
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                                        <div id="hiden">
                                        </div>


                </div>
            </div>
            <div class="fieldset" style=" height: 100px;">
            </div>

            <div id="submitButton">
                <%--    
                <a name="add" href="${pageContext.request.contextPath}/AddQuestion?surID=${key}">+ Add New Question</a>     
                --%>
                <a name="desOnClick${stat.index}" 
                       onclick="ajax_UpdaterURL('${pageContext.request.contextPath}/AddQuestion?surID=${key}','hiden',null)" 
                       href="#"><img title="Delete the Survey" src="${pageContext.request.contextPath}/media/add_dark.png" width="14px" height="18px"/> New Question</a> 
            </div>


        </form>
    </div>
</div>


<%@include file="/WEB-INF/src/common/fotter.jsp" %>

