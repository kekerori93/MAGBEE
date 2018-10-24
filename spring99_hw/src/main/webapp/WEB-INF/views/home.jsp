<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Oswald"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>

* {
	margin: 0;
	padding: 0;
}

.cha {
	font-family: 'Oswald', sans-serif;
	color: #fff;
	font-size: 20px;
	display: inline-block;
	margin-bottom: 25px;
}

#box a {
	text-decoration: none;
	color: #335a5d;
	font-size: 13px;
}

#box {
	width: 550px;
	text-align: center;
	margin: 20px auto;
	border: 1px solid #ddd;
	padding: 40px 30px 80px 30px;
	box-sizing: border-box;
	background-color: #6cafb3;
	border-radius: 15px;
}

#box h1 {
	font-family: 'Oswald', sans-serif;
	color: #fff;
	font-size: 35px;
	letter-spacing: 0.05em;
	margin-bottom: 20px;
}

#box #commAdd {
	text-align: left;
	width: 100%;
	padding: 40px;
	box-sizing: border-box;
	clear: both;
}

#box #commAdd .required {
	width: 100%;
	display: inline-block;
	margin-top: 10px;
	border: none;
	border-radius: 5px;
	background-color: #d4fafd;
	font-size: 16px;
	box-sizing: border-box;
	padding: 7px 9px;
}

#box label {
	display: block;
	font-family: 'Oswald', sans-serif;
	color: #fff;
	font-size: 19px;
	letter-spacing: 0.03em;
}

span.right {
	float: right;
	margin-top: 13px;
	color: white;
}

span.left {
	float: left;
	display: inline-block;
	margin-top: 5px;
	color: white;
}

input[type=submit] {
	padding: 7px 14px;
	display: inline-block;
	margin-top: 15px;
	background-color: #3e8185;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 14px;
	font-family: 'Oswald', sans-serif;
	letter-spacing: 0.04em;
}

input[type=submit]:hover {
	background-color: #6d999b;
}

#commList {
	padding: 20px 30px 30px;
	background: #7eb9bd;
	border-radius: 10px;
	width: 83%;
	margin: 40px auto 0;
	overflow: hidden;
}

#commList>div {
	margin-top: 25px;
	margin-bottom: 20px;
	border-top: 1px solid #7bc2c6;
	clear: both;
	padding: 25px 10px 0;
	overflow: hidden;
}

#commList div span {
	float: left;
	font-size: 15px;
}

#commList div>div {
	float: right;
	font-size: 15px;
}

#commList div>div p {
	float: left;
	text-align: left;
}

#commList div i {
	float: right;
	font-size: 15px;
	display: inline-block;
	margin-top: 3px;
	margin-left: 10px;
	color: #335a5d;
}

#commAdd .left {
	display: none;
}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="box">
		<div>
			<h1>INSIDE OUT</h1>
			<img src="<c:url value='/resources/images/movie.jpg' />"
				style="width: 250px;">
		</div>
		<div>
			<div id="commList">
				<span class="left cha">COMMENTS</span> <span class="right"></span>
			</div>
			<form method="post" action="/comments/insert">
				<div id="commAdd">
					<label>ID</label><input style="height: 30px" type="text" name="id"
						id="id" class="required"> <label style="margin-top: 10px;">CONTENS</label>
					<textarea style="height: 100px" name="comments" id="comments"
						class="required"></textarea>
					<span class="left"></span><span class="right"><input
						type="submit" value="Write"></span>
				</div>
			</form>
		</div>
	</div>
</body>
</html>