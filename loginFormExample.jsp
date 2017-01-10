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
				<span id="nameTag"><b>이름 : <span id="name">Unknown</span></b></span><br><p>
				<input type="button" id="login" value="Login" onclick="getName();" style="height:50;width:100">
			</td>
		</tr>
		<tr align = "right">
			<!--<td><input type="button" onclick="changeValue();"/></td>-->
			<td><a href="joinFormExample.jsp">계정 추가</a>&nbsp;&nbsp;&nbsp;</td>
		</tr>
	</table>
	</center>

	<script>
	function getName()
	{
		$.ajax({
			url:'./getName.jsp',
			type:'post',
			//data:data,
			data:$('input').serialize(),
			success:function(data){
				//console.log(data);
				var str = '<font color=blue><b>'+data+'</b></font>';
				$('#name').html(str);
			}
		});
	}
	</script>
	<script src="//code.jquery.com/jquery-3.1.1.js"></script>
</body>
</html>