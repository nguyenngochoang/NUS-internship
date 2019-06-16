

jQuery(function(){
    function calculating(text){
        // executing calculating here...
        result =0;
        var y = "";
        yArr =[]
        operator = [];
        var y_num = 0
        var tempval = 0;
        var index = [];
        for(i=0;i<text.length;i++){            
            if ("" + parseInt(text[i]) != "NaN"|| text[i]=="."){
                    y = y + text[i]
                    if(i==text.length-1){
                        if(y.includes(".")){
                            y_num = parseFloat(y)
                            yArr.push(y_num);
                        }
                        else{
                            y_num =parseInt(y,10);
                            yArr.push(y_num);
                        }
                        
                    }
            }
            
            // yArr=[1,2,3]
            //operator=[+,-]
            else{
                if(y.includes(".")){
                    y_num = parseFloat(y)
                    yArr.push(y_num);
                }
                else{
                    y_num =parseInt(y,10);
                    yArr.push(y_num);
                }
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
            while(operator.includes("*")){
                // index.push(operator.findIndex(x => x=="*")) ; // 1+2*3-4 => index = [1]
                var index = operator.findIndex(x => x=="*");
                tempval = yArr[index]*yArr[index+1];
                yArr[index]=tempval;
                yArr[index+1] = 0 ; // 1 6 0 4 
                operator[index]= "+" // + + -

            }

            while(operator.includes("/")){
                // index.push(operator.findIndex(x => x=="*")) ; // 1+6/3-4+5+9/3 => index = [1]
                var index = operator.findIndex(x => x=="/");
                if(yArr[index+1]==0){
                    $("#result").val("Divide by zero error!")
                    return;
                }
                else{
                    var tempval2 = yArr[index]/yArr[index+1];
                    yArr[index]=tempval2;
                    yArr[index+1] = 0 ; // 1 2 0 4 5 3
                    operator[index]= "+" // + + - + + +
                }
              

            }
            
            for(j=0;j<operator_len;j++){                 
                    switch(operator[j]){
                        case '+':
                            result+=yArr[j+1]
                            break;
                        case '-':
                            result -= yArr[j+1]
                            break;
                        default:
                            break;
                    }
                

               
            }
            $("#result").val(result)
            return;
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
        if(e.which == 16){
            $("#dotsplash").text(".")
        }
    });

    $(document).on("keyup",function(e){
        if(e.which == 16){
            $("#dotsplash").text("/")
        }
    });
})

