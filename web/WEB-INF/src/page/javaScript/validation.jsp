<script type="text/javascript" language="javascript">

    function clickPrev()
    {
        window.location= '<c:url value="/Prev"/>';
        return false;

    }
    function clickDone()
    {
        window.location= '<c:url value="/Done"/>';
        return false;

    }
        
        
    function clickNext()
    {
        return validate();
    }
    function validate()
    {
        
        var result=false;

            <c:forEach var="row" items="${javaScript}" varStatus="counter">
       
            <c:choose>
            <c:when test="${counter.index==0}">
            result = ${row};
            
            </c:when>
            <c:otherwise>
            result = ${row} && result;
                
            </c:otherwise>
                
            </c:choose>       
            </c:forEach>

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
        
    function checkTextArea(txtArea) {
        return false;
    }
        
    function checkRadio(rad)
    {
        
        var form1 = $('SurveyForm');
        var radios = form1[rad];
        if(!radios)
        {
            alert(rad + ' does not exist')
            return valid;
        }          
        var valid=false;
        var div= $("error_" + rad);
        if(!div)
        {
            alert('div not found');
            return valid;
        }
        for (var i = 0, length = radios.length; i < length; i++) {
            if (radios[i].checked) {
                    
                //var ans = radios[i].value;
                //alert('radio button true');
                valid= true;
            }
        }
        
        if(!valid)
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
        
    function checkRadioAndText(check)
    {
        var valid=false;
        var n=2;
            
        if(!checkRadio(check))
        {
            return valid;   
        }else
        {
            valid=true;
        }
        if(checkRadioLast(check))
        {
            valid = checkTextBox(check + "_text");
        }
            
            
        return valid;
            
    }
        
    function checkRadioAndTextOption6(check)
    {
        var valid=false;
        var n=2;
            
        if(!checkRadio(check))
        {
            return valid;
        }else
        {
            valid=true;
        }
            
        if(checkRadioFast(check))
        {
            valid = checkTextBox(check + "_yes");
        }
            
            
        return valid;
            
    }
        function checkRadioAndTextOption7(check)
    {
        var valid=false;
        var n=2;
            
        if(!checkRadio(check))
        {
            return valid;
        }else
        {
            valid=true;
        }
            
        if(checkRadioLast(check))
        {
            valid = checkTextBox(check + "_no");
        }
            
            
        return valid;
            
    }
         
    function checkRadioLast(myRad)
    {
        var form1 = $('SurveyForm');
        var radios = form1[myRad];
            
        var length= radios.length;


        return (radios[length-1].checked);

    }
    function checkRadioFast(myRad)
    {
        var form1 = $('SurveyForm');
        var radios = form1[myRad];
            
        //var length= radios.length;


        return (radios[0].checked);

    }
         
</script>