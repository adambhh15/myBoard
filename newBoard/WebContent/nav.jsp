<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nav</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

</head>
<body>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">AntTalk</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp?filePath=home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">LogIn</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="#">인기 게시판</a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="#">일반 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">건의 게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">로그아웃</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</body>
</html>