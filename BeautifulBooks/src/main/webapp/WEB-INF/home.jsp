<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beautiful Books</title>
</head>
<body>

<h1>Welcome to Beautiful Books!</h1>

<main class="container">
			<a class="button intro-animation-button" onclick="changePage('/searchBook.do')">
				<img alt="book" src="https://clipartix.com/wp-content/uploads/2016/12/Stack-of-books-clipart-clipartix.png" width="50px" class="intro-animation-image">
				Search Books
			</a>
			<a class="button intro-animation-button" onclick="changePage('/createBook.do')">
				<img alt="book" src="https://clipartix.com/wp-content/uploads/2016/12/Stack-of-books-clipart-free-images.jpeg" width="50px" class="intro-animation-image">
				Create Books
			</a>
		</main>
	</body>
	<script type="text/javascript">
		let anchors = document.querySelectorAll(".button");
		function changePage(url) {
				anchors.forEach((a, i) => {
					console.log("hello world")
					a.classList.remove("intro-animation-button");
					a.classList.add("exit-animation-button");
				});
			setTimeout(() => {
				window.location = url
			}, 1000);
		} 
	</script>
</body>
</html>