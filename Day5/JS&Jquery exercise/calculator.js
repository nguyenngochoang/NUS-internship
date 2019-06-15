

jQuery(function(){
    function calculating(text){
        // executing calculating here...
        result =0;
        var y = "";
        yArr =[]
        operator = [];
        var y_int = 0
        for(i=0;i<text.length;i++){            
            if ("" + parseInt(text[i]) != "NaN"){
                    y = y + text[i]
                    if(i==text.length-1){
                        y_int =parseInt(y,10);
                        yArr.push(y_int);
                    }
            }
            
            // yArr=[1,2,3]
            //operator=[+,-]
            else{
               
                y_int =parseInt(y,10);
                yArr.push(y_int);
                           
                operator.push(text[i]);  
                y=""          
            }  
            
        }

        if("" + parseInt(text[0]) != "NaN"){
            result+=yArr[0]
        }
      

        yArr_len = yArr.length;
        operator_len = operator.length;
        if(yArr_len == operator_len){
            result +=  0
            $("#result").val(result)
            
        }
    
        else{
            for(j=0;j<operator_len;j++){            
                switch(operator[j]){
                    case '+':
                        result+=yArr[j+1]
                        break;
                    case '-':
                        result -= yArr[j+1]
                        break;
                    case '*':
                        result *= yArr[j+1]
                        break;
                    case '/':
                        if(yArr[j+1]==0){
                            result = "Divided by zero!"
                            break;
                        }
                        
                        result /= yArr[j+1]
                        break;
                    default:
                        break;
                }
            }
            $("#result").val(result)
        }
        
        
        
    }

    function updateResField(){
        $("button").on("click",function(){
            var text = $(this).text();
            
            if(text!="clear"&&text!= "="){
              $("#result").val($("#result").val()+text)
            }
            else{
                if(text == "="){
                    calculating( $("#result").val())
                }
                else{
                    $("#result").val("")
                }
                

            }
        });
    }

    
    updateResField()

    $(document).on("keydown",function(e){
        if(e.which==8){
          var text = $("#result").val();
          $("#result").val(text.substring(0,$("#result").val().length-1))
        }
        if(e.which==46){
            $("#result").val("");
        }
        if(e.which >95 && e.which<112){
            $("#result").val($("#result").val()+e.key);

        }

        if(e.which == 13){
            calculating( $("#result").val())

        }
    });
    
})

