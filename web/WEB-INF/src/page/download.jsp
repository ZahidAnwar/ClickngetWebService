
<%@include file="/WEB-INF/src/common/menu/download.jsp" %>

<div id="homepge">
    <div id="pageTitle">
    <p>Select the survey to download the survey reports.</p>
    </div>
        <table style="width: 950px; margin: 0 auto;">
            <tr>
                <td class="hdr" colspan="3">
                    <p></p> 
                </td>

            </tr>


            <tbody>
                <tr>
                    <th>Title</th>
                    <th>Last Modified</th>
                    <th>Download</th>
                </tr>
            </tbody>

             <c:forEach var="row" items="${surveyList}">
                 
                <tr class="tdClass">
                    <td>
                        <div id="activity"> <a href="${pageContext.request.contextPath}/Download?id=${row.surveyID}">${row.surveyTitle}</a></div>
                       <p class="created">Created <fmt:formatDate value="${row.created}" pattern="MMMM, dd yyyy" /></p>
                </td>
                <td><fmt:formatDate value="${row.updated}" pattern="dd/MM/yyyy" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/Download?id=${row.surveyID}"><img title="Download Survey Reports" width="30px" height="24px" 
                                                                                                  src="${pageContext.request.contextPath}/media/download.png"/>
                    </a>
                </td>
                </tr>


            </c:forEach>
        </table> 
    <%--href="${pageContext.request.contextPath}/SurveyResult?id=${row.surveyID}"  --%>
</div>

<%@include file="/WEB-INF/src/common/fotter.jsp" %>

