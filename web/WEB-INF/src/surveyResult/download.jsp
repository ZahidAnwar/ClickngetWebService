
<%@include file="/WEB-INF/src/common/download.jsp" %>

<div id="homepge">
        <table style="width: 950px; margin: 0 auto;">
            <tr>
                <td class="hdr" colspan="3">
                    <p>Select the survey to download the survey reports.</p> 
                </td>

            </tr>


            <tbody>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Last Modified</th>
                </tr>
            </tbody>

             <c:forEach var="row" items="${surveyList}">
                 
                <tr class="tdClass">
                    <td>${row.surveyID}</td>
                    <td>
                        <div id="activity"> <a href="${pageContext.request.contextPath}/Download?id=${row.surveyID}">${row.surveyTitle}</a></div>
                       <p class="created">Created <fmt:formatDate value="${row.created}" pattern="MMMM, dd yyyy" /></p>
                </td>
                <td><fmt:formatDate value="${row.updated}" pattern="dd/MM/yyyy" /></td>
                </tr>


            </c:forEach>
        </table> 
    <%--href="${pageContext.request.contextPath}/SurveyResult?id=${row.surveyID}"  --%>
</div>

<%@include file="/WEB-INF/src/common/fotter.jsp" %>

