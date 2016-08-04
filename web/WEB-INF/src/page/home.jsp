
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/src/common/menu/home.jsp" %>
<div id="homepge">
        <div id="pageTitle">
    <p>Active Surveys</p>
    </div>
   <table style="width: 950px; margin: 0 auto;">
            <tr>
                <td class="hdr" colspan="4">
                    <p></p> 
                </td>

            </tr>


            <tbody>
                <tr>
                    <th>Title</th>
                    <th>Modified</th>
                    <th>Running&nbsp;&nbsp;&nbsp;</th>  
                    <th>Action</th> 
                </tr>
            </tbody>

            <c:forEach var="row" items="${surveyList}">

                <tr class="tdClass">
                    <td>
                        <div id="activity"><a href="${pageContext.request.contextPath}/EditQuestionPage?surID=${row.surveyID}"> ${row.surveyTitle} </a></div>
                        <p class="created">Created <fmt:formatDate value="${row.created}" pattern="MMMM, dd yyyy" /></p>
                </td>
                <td><fmt:formatDate value="${row.updated}" pattern="dd/MM/yyyy" />

                </td>
                <td>
                   <c:choose>
                          <c:when test="${row.site==1}">
                            Nurtatech
                          </c:when>
                          
                          <c:when test="${row.site==2}">
                            Sainsbury's Diet
                          </c:when>
                          <c:when test="${row.site==3}">
                            Boots
                          </c:when>  
                            
                          <c:otherwise>
                              No Site Found
                          </c:otherwise>
                    </c:choose>

                </td>
                <td>
                    <div id="action">
                        <ul>
                            <li class="design"><a href="${pageContext.request.contextPath}/EditQuestionPage?surID=${row.surveyID}"><img title="Design Your Survey" src="${pageContext.request.contextPath}/media/design.png"/></a></li>
                            <li class="response">
                                <a href="http://www.nutratech-dev.co.uk/Survey/SurveyStart?guid=${row.guid}"><img title="Preview of the survey" src="${pageContext.request.contextPath}/media/response.png"/>
                                </a></li>
                            <li class="graph"><a href="#"><img title="Analyze Results" src="${pageContext.request.contextPath}/media/graph.png"/></a></li>

                        </ul>
                    </div>
                </td>
                </tr>


            </c:forEach>
        </table> 
    <%--href="${pageContext.request.contextPath}/SurveyResult?id=${row.surveyID}"  --%>
</div>

<%@include file="/WEB-INF/src/common/fotter.jsp" %>