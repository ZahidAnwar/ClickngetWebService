
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/src/common/menu/edit.jsp" %>
<div id="homepge">
            <div id="pageTitle">
    <p>To edit survey, please select the survey from the following list.</p>
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
                    <th>Modified</th>
                    <th>Action</th>  
                </tr>
            </tbody>

            <c:forEach var="row" items="${surveyList}">

                <tr class="tdClass">
                    <td>
                        <div id="activity"><a href="${pageContext.request.contextPath}/EditQuestionPage?surID=${row.surveyID}"> ${row.surveyTitle} </a></div>
                        <p class="created">Created <fmt:formatDate value="${row.created}" pattern="MMMM, dd yyyy" /></p>
                </td>
                <td><fmt:formatDate value="${row.updated}" pattern="dd/MM/yyyy" /></td>
                <td>
                    <div id="action">
                        <ul>
                            <li class="graph">
                                <form name="editAns" method="post" id="editAns" >
                                <a onclick="return deleteConfirm()" href="${pageContext.request.contextPath}/DeleteSurvey?surID=${row.surveyID}">
                                    <img title="Delete the Survey" src="${pageContext.request.contextPath}/media/delete.png" width="30px" height="30px"/></a>
                                </form>
                            </li>
                            <li class="response">
                                <a href="http://www.nutratech-dev.co.uk/Survey/SurveyStart?guid=${row.guid}">
                                    <img title="Preview of the survey" src="${pageContext.request.contextPath}/media/response.png"/>
                                </a></li>
                        </ul>
                    </div>
                </td>
                </tr>


            </c:forEach>
        </table> 

    <%--href="${pageContext.request.contextPath}/SurveyResult?id=${row.surveyID}"  --%>
</div>

<%@include file="/WEB-INF/src/common/fotter.jsp" %>