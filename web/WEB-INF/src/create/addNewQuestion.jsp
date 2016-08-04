
<%@include file="/WEB-INF/src/common/menu/edit.jsp" %>

<div id="NoTabContent">
    <h1>Edit/Add Question</h1>
    <div class="containerx grid">
        <form name="SurveyFormAdd" method="post" id="SurveyFormAdd" action="${pageContext.request.contextPath}/AddNewQuestion?surID=${surID}">
              <div class="fieldset" id="field">
                <div id="hideInputBox">

                    <div id="error_inputCreateTitle" class="errorAnswerBlank" style="display: none;">
                        <img alt="" src="${pageContext.request.contextPath}/media/icon_validation_error.gif">
                        <span class="errorMess">This question requires an answer</span> 
                    </div>

                        <p> Question:
                <span class="title">    
                <textarea id="txtBoxQuestion" name="txtBoxQuestion" cols="60" rows="2" style="border: 1px solid #000;"></textarea>
                </span>
                            </p>
                    <br>

                    <div id="error_inputCreateSubTitle" class="errorAnswerBlank" style="display: none;">
                        <img alt="" src="${pageContext.request.contextPath}/media/icon_validation_error.gif">
                        <span class="errorMess">This question requires an answer</span>
                    </div>


                    
                        <p>How many answers would you like to add:
                            <select class="editTextBox" name="txtCountAnswers">
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

                            </select>
                            <%--<input class="editTextBox" id="txtCountAnswers" name="txtCountAnswers" type="text">--%>
                            </p>
                            
                            
                             <div id="questionType">
                            <p>Question Option</p>
                            <hr style="border: 1px #CCCCCC dashed;">
                            <input type="hidden" name="txtQuestionID" value="${row.uid}">
                            <input type="hidden" name="txtSurveyID" value="${row.suveryId}">
                            <p>Page :   
                                <span class="txtRight">
                                    <select class="editTextBox" name="txtPage">
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
                                    
                                    
                                    
                                   <%-- <input class="editTextBox" type="text" name="txtPage"></span></p>
                                <p>Question Order :  <input class="editTextBox" type="text" name="txtQuesOrder" value="${row.questionOrder}"></p>--%>

                            <p>Question Order :
                                <span class="txtRight">
                                     <select class="editTextBox" name="txtOrder">
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
                                   <%--<input class="editTextBox" type="text" name="txtOrder"> --%>
                                </span>
                            </p>


                            <p>Question Type : 
                                <span class="txtRight">
                                <select class="editTextBox" name="txtQuesType">
                                    <option value="1">Multiple</option>  
                                    <option value="2">Descriptive with small text box</option>  
                                    <option value="3">Multiple + Descriptive with 'other'</option>  
                                    <option value="4">Question with no answer</option>  
                                    <option value="5">Descriptive with large text box</option> 
                                    <option value="6">Multiple + Descriptive with 'if yes'</option>  
                                    <option value="7">Multiple + Descriptive with 'if no'</option>  
                                </select>
                                </span>
                            </p>

                            <p>Required : 
                                <span class="txtRight">
                                <select class="editTextBox" name="txtRequired">
                                    <option value="1">Yes</option>  
                                    <option value="0">No</option>   
                                </select>
                                </span>
                            </p>
                            <p>To add logic in the question, please complete the add question procedure and than edit the question from selected question.    
                            </p>


                        </div> 
                </div>

            <div id="submitButton">
                <input type="submit" value="Cancel" onclick="return clickCancel()">
                <input type="submit" value="Add">
            </div>
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
        result =  checkTextBox('txtBoxQuestion');
        result =  checkTextBox('txtCountAnswers') && result;
        return result;           
    }
  
    function checkTextBox(textBox)
    {
        //alert(3);
        
        var valid=false;
        var form1 = $('SurveyFormAdd');
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

