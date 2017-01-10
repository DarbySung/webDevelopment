<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.sql.*" %>
<html>
<bod>
	<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "insert into TB_USER_INFO(ID,PW,NAME) values(?,HASHBYTES('SHA1',?),?)";
		int n=0;

		try
		{
			try
			{
				String url1 = "jdbc:sqlserver://192.168.10.171:1435;databaseName=darby_test;user=darby;password=4;";
				
				con = DriverManager.getConnection(url1);

				System.out.println("Connection Success");
			}
			catch(Exception e)
			{
				System.out.println("Connection Fail");
				System.out.println(e.getMessage());
			}

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			
			n = pstmt.executeUpdate();
		}
		catch(SQLException se)
		{
			System.out.println(se.getMessage());
		}
		finally
		{
			try
			{
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}
			catch(SQLException se)
			{
				System.out.println(se.getMessage());
			}
		}	
	%>
	<script type="text/javascript">
		if(<%=n%> > 0){
			alert("Joining Success!");
			location.href="loginFormExample1.jsp";
		}else{
			alert("Joining fail!");
			history.go(-1);
		}
	</script>
</bod>
</html>