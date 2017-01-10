<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<form method="post" action="getName.jsp">
		<center>
		<br><br>
		<table border="0" width = "350" height="450">
			<tr align="center" bgcolor="#E2E7E4">
				<td>
					<img src="logo.png"><p>
					<!--<h3>DB(darby_test) Login</h3>-->
					아이디<br><br><input type="text" name="id" style="height:40"><br><p>
					비밀번호<br><br><input type="password" name="pw" style="height:40"><br><p>
					<input type="submit" value="Login" style="height:50;width:100">
				</td>
			</tr>
			<tr align = "right">
				<!--<td><input type="button" onclick="changeValue();"/></td>-->
				<td><a href="joinFormExample1.jsp">계정 추가</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
		</center>
	</form>
</html>