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
        <script src="js/chartist.js"></script>
        <link rel="stylesheet" href="css/chartist.css" type="text/css">
        
         <script>
            // get the url
            var url = window.location.href;
            //getting the access token from url
            var access_token = url.split("#")[1].split("=")[1].split("&")[0];
            // get the userid
            var userId = url.split("#")[1].split("=")[2].split("&")[0];
            function getData() {
                var xhr = new XMLHttpRequest();
                var uri = 'https://api.fitbit.com/1/user/' + userId + '/activities/tracker/steps/date/' + document.getElementById('time').value + '/' + document.getElementById('lapsus').value + '.json';
                xhr.open('GET', uri);
                xhr.setRequestHeader("Authorization", 'Bearer ' + access_token);
                xhr.onload = function () {
                    if (xhr.status === 200) {
                        document.getElementById("results").innerHTML = xhr.responseText;
                        graphMovility(xhr.responseText);
                    }
                };
                xhr.send();
            }
            
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fitbit</title>
    </head>
    <body>
        <div class="row centerData">
            <h5> Elegir periodo de tiempo del que se quiere tomar</h5>
            <label>Fecha de termino :</label>
            <input class="u-full-width" pattern="/\d\d\d\d-\d\d-\d\d/" type="text" name="time" placeholder='yyyy-MM-dd' id='time'required>
            <input type="button" value="1d" onclick='getData()' id="lapsus" class="btn btn-primary">
            <input type="button" value="7d" onclick='getData()' id="lapsus" class="btn btn-primary">
            <input type="button" value="30d" onclick='getData()' id="lapsus" class="btn btn-primary">
            <input type="button" value="1w" onclick='getData()' id="lapsus" class="btn btn-primary">
            <input type="button" value="1m" onclick='getData()' id="lapsus" class="btn btn-primary">
        </div>
        <div>
            <textarea name='jsonresult' rows='4' cols='50' id="results" hidden></textarea>
        </div>
        <div class="ct-chart ct-perfect-fourth"></div>
        <script>
            function graphMovility(jsondata) {
                jsondata = JSON.parse(jsondata)
                let labelsprep = []
                let seriesprep = []
                for (var dat in jsondata) {
                    for (var elem in jsondata[dat]) {
                        labelsprep.push(jsondata[dat][elem].dateTime)
                        seriesprep.push(jsondata[dat][elem].value)
                    }
                }
                var data = {
                    //prepare the data
                    // A labels array that can contain any sort of values
                    labels: labelsprep,
                    // Our series array that contains series objects or in this case series data arrays
                    series: [seriesprep]
                };
                var options = {
                    width: 800,
                    height: 600
                };
                // Create a new line chart object where as first parameter we pass in a selector
                // that is resolving to our chart container element. The Second parameter
                // is the actual data object.
                new Chartist.Line('.ct-chart', data, options);
            }
        </script>
        
        
        
    </body>
    
</html>
