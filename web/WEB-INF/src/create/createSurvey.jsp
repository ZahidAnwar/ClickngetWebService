
<%@include file="/WEB-INF/src/common/menu/edit.jsp" %>

<div id="NoTabContent">
    <h1>Create Survey</h1>
    <div class="containerx grid">
        <form name="SurveyForm" method="post" id="SurveyForm" onsubmit="return clickContinue()" action="${pageContext.request.contextPath}/Continue">
              <div class="fieldset">
                <input id="rdbtnImport" type="radio" name="SrvyCreate" value="rdbtnImport" checked="true">
                <label class="large-label"> Create a new survey</label>
                <div id="hideInputBox">

                    <div id="error_inputCreateTitle" class="errorAnswerBlank" style="display: none;">
                        <img alt="" src="${pageContext.request.contextPath}/media/icon_validation_error.gif">
                        <span class="errorMess">This question requires an answer</span> 
                    </div>

                    <span class="title">Title:</span>
                    <input id="inputCreateTitle" name="inputCreateTitleTxt" type="text"> 
                    <%--  value="New Survey"   onfocus="if(this.value == this.defaultValue) this.value = ''"> --%>
                    <br>

                    <div id="error_inputCreateSubTitle" class="errorAnswerBlank" style="display: none;">
                        <img alt="" src="${pageContext.request.contextPath}/media/icon_validation_error.gif">
                        <span class="errorMess">This question requires an answer</span>
                    </div>


                    <span class="title">Sub Title:</span>
                    <input id="inputCreateSubTitle" name="inputCreateSubTitleTxt" type="text">
                          <br>
                          <span class="title">Select Logo:</span>
                            <select name="txtLogo">
                                    <option value="1">Nutratech</option>  
                                    <option value="2">Sainsbury's Diet</option>
                                    <option value="3">Boots</option>
                                </select>
                </div>
            </div>
            <div class="fieldset">
                <input disabled="true" id="rdbtnImport" class="survey-create" type="radio" name="SrvyCreate" value="rdbtnImport">
                <label>Copy an existing survey</label>
            </div>

            <div class="fieldset last">
                <input disabled="true" id="rdbtnTemplate" class="survey-create" type="radio" name="SrvyCreate" value="rdbtnTemplate">
                <label>Use an expert survey template</label>
            </div>

            <div id="submitButton">
                <input type="submit" value="Cancel" onclick="return clickCancel()">
                <input type="submit" value="Continue">
            </div>


        </form>
    </div>
</div>



<script type="text/javascript" language="javascript">

    function clickCancel()
    {
        window.location= '${pageContext.request.contextPath}/Home';
        return false;
    }

    function clickContinue()
    {
        return validate();
    }
    function validate()
    {       
        var result=false;
        result =  checkTextBox('inputCreateTitle');
        result =  checkTextBox('inputCreateSubTitle') && result;
        return result;           
    }
  
    function checkTextBox(textBox)
    {
        //alert(3);
        
        var valid=false;
        var form1 = $('SurveyForm');
        var input1 = form1[textBox];
            
        if(!input1)
        {
            alert(textBox + ' does not exist')
            return valid;
        }
        //var f = $F('SurveyForm');
        var s=input1.value;
        var div= $("error_" + textBox);
        if(!div)
        {
            alert('div not found');
            return valid;
        }
 
        if((!s.match(/\S/)))
        { 
            //div.innerHTML = "This question requires an answer";
            div.show();
        }else
        {
            div.hide();
            valid=true;
        }
        
        
        return valid;
    }
    
</script>


<%@include file="/WEB-INF/src/common/fotter.jsp" %>

