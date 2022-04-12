document.getElementById("chkBtn").addEventListener("click", 
    function () {  
     var username = document.getElementById("username" ).value;
     var password = document.getElementById ( "password") .value;
     if (username =="wxq" && password=="dsj") {
      
         window.location.href='./myself/1index.html';}
     else {
     alert('抱歉，用户名或密码错误!');}
    })
