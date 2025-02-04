<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">	<!-- 반응형 웹에 사용. initail-scale: 페이지 처음 로드 시 초기 줌 레벨 설정 -->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<%
		String id = null;
		if (session.getAttribute("id") != null)
			id = (String) session.getAttribute("id");
	%>
	
	<nav class="navbar navbar-default" style="background-color: rgb(35, 35, 35); border: 1px solid rgb(35, 35, 35); border-radius: 0px;">
		<div class="navbar-header">
			<!--
				data-toggle="collapse": 정보를 접었다가 클릭하면 펼쳐짐
				data-target="#abc": id="abc"와 연결. id는 접으려고 하는 컨텐츠
				aria-expanded="false": 정보 접은 상태로 유지. true면 펼쳐져있는 상태
			-->
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">카카오프렌즈</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			
			<%
				if (id == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<!--
						role="button": 버튼 기능
						aria-haspopup="true": 하위 메뉴가 있다는 걸 암시
						href="#": 연결할 링크가 없음
					-->
					<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="userUpdate.jsp">회원정보 수정</a></li>
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	
	<div class="container">
		<div class="jumbotron">
			<div class="container" style="text-align: center;">
				<h1>여러분의 행복한 일상에 카카오프렌즈가 함께 합니다.</h1>
				<p>카카오프렌즈는 여러분에게 더 좋은 친구가 되기 위해 항상 노력 중입니다. 여러분의 모든 순간에 카카오프렌즈가 행복으로 함께 합니다.</p>
				<a href="http://hjy2885.dothome.co.kr/PracticalProject1/Project1/proj.html" class="btn btn-primary btn-pull" role="button" style="background-color: gold; color: black; border: 1px solid gold;">자세히 알아보기</a>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/header1.png">
				</div>
				<div class="item">
					<img src="images/header2.png">
				</div>
				<div class="item">
					<img src="images/header3.jpeg">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	
</body>
</html>