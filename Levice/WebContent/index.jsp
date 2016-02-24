<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
	try {

		Connection Con;

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

		Con = DriverManager.getConnection("jdbc:sqlserver://qds209634621.my3w.com:1433;DatabaseName=master",
				"qds209634621", "lidi100100");

		System.out.println("Step1 goes well");

		Statement stmt = Con.createStatement();

		String sql = "select * from dbo.spt_values";

		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {
			String attr2 = rs.getString(1);
			String attr3 = rs.getString(2);
			String attr4 = rs.getString(3);
			String attr5 = rs.getString(4);
			System.out.println(attr2 + "\t" + attr3 + "\t" + attr4);

		}

		stmt.close();

	}

	catch (Exception e) {

		System.out.println("Step1 down");

		e.printStackTrace();

	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<title>标题栏</title>
</head>
<body>修改charset
</body>
</html>
