<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<script type = "text/javascript">
			function formCheck()
			{
				if(document.addJoin.id.value=="")
				{
					alert("아이디를 입력하세요.");
					document.addJoin.id.focus();
					return;
				}

				if(document.addJoin.pw.value=="")
				{
					alert("비밀번호를 입력하세요.");
					document.addJoin.pw.focus();
					return;
				}

				if(document.addJoin.pw.value!=document.addJoin.pw2.value)
				{
					alert("입력한 두개의 비밀번호가 일치하지 않습니다.");
					document.addJoin.pw2.focus();
					return;
				}

				document.addJoin.submit();
			}
		</script>
	</head>
	<body>
		<center>
		<br><br>
		<table border="0"  bgcolor="#E2E7E4">
			<tr>
				<td colspan=2><h3>계정 추가</h3></td>
			</tr>
			<tr>
				<td colspan=2><font size="2" color="red">*은 필수항복입니다.</td>
			</tr>
			<form method="post" action="insertExample.jsp" name="addJoin">
				<tr height="70">
					<td>아이디 *<p></td><td><input type="text" name="id" maxlength="15" style="height:40;width:300;"><p></td>
				</tr>
				<tr height="70">
					<td>비밀번호 *<p></td><td><input type="password" name="pw" maxlength="15" style="height:40;width:300;"><p></td>
				</tr>
				<tr height="70">
					<td>비밀번호 확인 *<p></td><td><input type="password" name="pw2" maxlength="15" style="height:40;width:300;"><p></td>
				</tr>
				<tr height="70">
					<td>이름<p></td><td><input type="text" name="name" maxlength="30" style="height:40;width:300;"><p></td>
				</tr>
				<tr>
					<td align="right" colspan=2><input type="button" value="가입" style="height:50;width:100" onclick="formCheck()"></td>
				</tr>
			</form>
		</table>
		</center>
	</body>
</html>