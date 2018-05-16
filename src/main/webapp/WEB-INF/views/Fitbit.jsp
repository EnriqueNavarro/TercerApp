<%-- 
    Document   : Fitbit
    Created on : May 15, 2018, 4:39:06 PM
    Author     : Arpi
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
            
            
                <div class="row centerData">
                    <h5> Elegir periodo de tiempo del que se quiere tomar</h5>
                    <input type="button" value="1d" onclick=changePeriod("1d"); id="1d" class="btn btn-primary">
                    <input type="button" value="7d" onclick=changePeriod("7d"); id="7d" class="btn btn-primary">
                    <input type="button" value="30d" onclick=changePeriod("30d"); id="30d" class="btn btn-primary">
                    <input type="button" value="1w" onclick=changePeriod("1w"); id="1w" class="btn btn-primary">
                    <input type="button" value="1m" onclick=changePeriod("1m"); id="1m" class="btn btn-primary">
                </div>
           <script>
               src="js/chartist.js";
                            // get the url
             var url = window.location.href;

             //getting the access token from url
             var access_token = url.split("#")[1].split("=")[1].split("&")[0];

             // get the userid
                var userId = url.split("#")[1].split("=")[2].split("&")[0];
                var period="1d";
                function changePeriod(p){
                    period=p;
                    makeRequest();
                    return true;
                }
                function makeRequest(){
                    var xhr = new XMLHttpRequest();
                    xhr.open('GET', 'https://api.fitbit.com/1/user/'+ userId +'/activities/steps/date/today/'+period+'.json');
                    xhr.setRequestHeader("Authorization", 'Bearer ' + access_token);
                    xhr.onload = function() {
                       if (xhr.status === 200) {
                          console.log(xhr.responseText);
                          graphMovility(xhr.responseText);
                          document.write(xhr.responseText);
                                    }
                    };                    
                    xhr.send()
                                        
                }
                function graphMovility(jsondata){
                    jsondata=JSON.parse(jsondata)
                    
                    let labelsprep=[]
                    let seriesprep=[]
                    
                    for (var dat in jsondata) {
                        for (var elem in jsondata[dat]) {
                            labelsprep.push(jsondata[dat][elem].dateTime)
                            seriesprep.push(jsondata[dat][elem].value)
                        }
                    }
                    var data ={
                        labels: labelsprep,
                        series:[seriesprep]
                    };
                    var options ={
                        width: 800,
                        heigh: 600
                    };
                    new chartist.Line('ct.-chart',data,options);
                }
                
                
                
            </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fitbit</title>
    </head>
    
</html>
