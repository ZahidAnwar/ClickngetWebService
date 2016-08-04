<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>${title}</title>
        <link rel="stylesheet" type="text/css" href="<s:url value="/style/default.css"/>"> 
        <script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/lib/prototype17.js"></script>
        <script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/js/lib/ajax_helper_1.js"></script>
        <script type="text/javascript" language="javascript">
            function checkLogic(e)
            {
  
                var ans = e.options[e.selectedIndex].value;
                if(ans==1)
                {
                    $(logicOption).show();  
                }else
                {
                    $(logicOption).hide();   
                }
                return false;
             
            }
            
            
            function checkLogicAns(e, surId, qID)
            {
  
                var ans = e.options[e.selectedIndex].value.split('_');
                var id= ans[0];
                ajax_SubmitGet($(editQes), null);
                var form = $(editQes);
                if(!form)
                    {
                        alert('form does not exist')
                    }

                var str = form.serialize();
                var url= '${pageContext.request.contextPath}/EditAnsLogic?mySurveyId='+surId+'&questionId=' +id +'&myQues='+qID + '&'+str;
                var div=$(logicAns);
                ajax_UpdaterURL(url, div, null);
                
                return false;
             
            }

            function clickCancel(cancelSurId)
            {
                window.location= '${pageContext.request.contextPath}/Cancel?cancelSurId='+cancelSurId;
                return false;
            }
        
            function ajaxUp(url, div, n)
            {
                ajax_UpdaterURL(url, div, n);
                $('question'+div).hide();
                $('editDelete'+div).hide();
                return false;
            }
        
            function deleteConfirm()
            {
                var txt="";
                try
                {
                    adddlert("Delete answer!");
                }
                catch(err)
                {
                    txt="Are you sure you want to delete?";

                    if(confirm(txt))
                    {
                        return true;

                    }else
                    {
                        return false;
                    }
                }
 
            }

        </script> 


    </head>
    <body>
        <div id="login">
            <ul>
                <li><a href="${pageContext.request.contextPath}/Acount">${username}</a></li>
                <li><a href="${pageContext.request.contextPath}/Logout">Logout</a></li>
                <li><a href="${pageContext.request.contextPath}/Help">Help</a></li>
            </ul>
        </div> 
        <div id="create">
            <ul>
                <li><a href="${pageContext.request.contextPath}/CreateSurvey">+ Create Survey</a></li> 
            </ul>
        </div>
