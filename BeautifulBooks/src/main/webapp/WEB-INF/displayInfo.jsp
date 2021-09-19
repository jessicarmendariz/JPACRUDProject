<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Display Info</title>
	</head>
	<body>
			<section class="right info-intro">
				<section class="info">
					<div>
						<h2>${book.title}</h2>
					</div>
					<article>
						<p>${book.description}</p>
						<div class="meta">
							<p>Heroine: ${book.heroineName}''</p> 
							<p>Hero: ${book.heroName}''</p> 
						</div>
					</article>
				</section>
				<section class="nav">
					<form action="bookUpdateForm.do" method="POST" id="update-book">
						<input type="hidden" name="id" value="${book.id}"/>
						<button type="button" id="update">Update</button>
					</form>
					<form action="deleteBookFromDB.do" method="POST" id="delete-book">
						<input type="hidden" name="id" value="${book.id}"/>
						<button type="button" id="delete">Delete</button>
					</form>
				</section>
			</section>
	</body>
</html>