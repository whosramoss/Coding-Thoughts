<!DOCTYPE html>
<html>
<head>
	<title>Registration System</title>
	<link rel="stylesheet" type="text/css" href="stylephp.css">
	<meta charsert="UTF-8"/>
</head>
<body>
	<form method="post" action="register.php">
		<table id="cad_table">
			<tr>
				<td><input type="text" name="user" placeholder="Username" class="txt"/></td>
			</tr>
			<tr>
				<td><input type="email" name="email" placeholder="email" class="txt"/></td>
			</tr>
			<tr>
				<td><input type="password" name="password" placeholder="password" class="txt" maxlengh="10"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Register" id="btnCad"></td>	
			</tr>
		</table>
	</form>
</body>
</html>