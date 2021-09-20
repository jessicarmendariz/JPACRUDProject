<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Book</title>
</head>
<body>
<main class="container">
			<section>
				<c:forEach var="book" items="${books}">
					<a href="./searchBookById.do?id=${book.id}">
						<img alt="book" src="${book.imageUrl}">
					</a>
				</c:forEach>
			</section>
		</main>
</body>
</html>