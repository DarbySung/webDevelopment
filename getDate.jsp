<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "org.json.*" %>
<html>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Boolean loginFlag=false;

		try
		{
			String url1 = "jdbc:sqlserver://192.168.10.171:1435;databaseName=darby_test;user=darby;password=4;";
			
			con = DriverManager.getConnection(url1);
			System.out.println("Connection Success");

			String sql = "SELECT * FROM TB_USER_INFO WHERE ID=? AND PW = HASHBYTES('SHA1', ?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2,pw);
			rs = pstmt.executeQuery();

			int size = 0;
			while(rs.next())
			{
				size++;
				String date = rs.getString("JOIN_DATE");
				String name = rs.getString("NAME");
				JSONObject jObj = new JSONObject();

				jObj.put("date", date);
				jObj.put("name", name);

				/* response 객체를 사용하지 않는 경우
				out.clear();
				out.print(jObj);
				*/

				out.clear();
				response.setContentType("application/json; charset=UTF-8");
				response.getWriter().print(jObj);

				return;
			}
			loginFlag = size > 0 ? true : false;
		}
		catch(Exception e)
		{
			System.out.println("Connection Fail");
			System.out.println("E"+e.getMessage());
		}
		finally
		{
			try
			{
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
				if(rs!=null) rs.close();
			}
			catch(SQLException se)
			{
				System.out.println("se"+se.getMessage());
			}
		}
	%>
	<script>
		if(<%=loginFlag%> == false)
		{
			alert("아이디나 패스워드가 틀렸습니다.");
		}
	</script>
</body>
</html>