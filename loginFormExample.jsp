<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<body>
	<center>
	<br><br>
	<table border="0" width = "350" height="450">
		<tr align="center" bgcolor="#E2E7E4">
			<td>
				<img src="logo.png"><p>
				<!--<h3>DB(darby_test) Login</h3>-->
				아이디<br><br><input type="text" id="id" name="id" style="height:40"><br><p>
				비밀번호<br><br><input type="password" id="pw" name="pw" style="height:40"><br><p>
				<!--<span id="userData"></span><br><p>-->
				<input type="button" id="login" value="Login" onclick="getName();" style="height:50;width:100">
			</td>
		</tr>
		<tr align = "right">
			<!--<td><input type="button" onclick="changeValue();"/></td>-->
			<td><a href="joinFormExample.jsp">계정 추가</a>&nbsp;&nbsp;&nbsp;</td>
		</tr>
	</table>
	<span id="userData"></span>
	</center>

	<script>
	function getName()
	{
		$.ajax({
			datatype:'json',
			url:'./getDate.jsp',
			type:'post',
			//data:data,
			data:$('input').serialize(),
			success:function(data){
				/*	response 객체를 사용하지 않는 경우
				var obj = $.parseJSON(data);
				var date = obj.date;
				var name = obj.name;
				*/
				var date = data.date;
				var name = data.name;
				var str = '가입 시간 : <font color=blue><b>'+date+'</b></font><br>'+'이름 : <font color=blue><b>'+name+'</b></font>';
				$('#userData').html(str);
				console.log(str);
			}
		});
	}
	</script>
	<script src="//code.jquery.com/jquery-3.1.1.js"></script>
</body>
</html>