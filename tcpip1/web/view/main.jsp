<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
	
	
	
   $('#iot').click(function(){
	   var ip = $('#ip').val();
	   $.ajax({
         url:"iot.mc?ip="+ip,
         success:function(data){
            console.log('Send Complete...');
         }
      });
   });
   
   $('#phone').click(function(){
      $.ajax({
         url:"phone.mc",
         success:function(data){
            //alert('Send Complete...');
         }
      });
   });
   
});
</script>
</head>
<body>
<h1>Main Page</h1>
<form action="iot.mc" method="post">
	<input type="text" id="ip" maxlength="50"></input>
</form>
<h2><a id="iot" href="#">Send IoT(TCP/IP)</a></h2>
<h2><a id ="phone" href="#">Send Phone(FCM)</a></h2>
</body>
</html>