<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>
<form action="addBookToDB.do" class="form-intro" method="Post">
						<input type="number" placeholder="Book Id" name="bookId" class="form-control"/>
						<input type="text" placeholder="Title" name="title" class="form-control"/>
						<textarea placeholder="description" name="description" class="form-control"></textarea>
						<input type="text" placeholder="Heroine Name" name="heroineName" class="form-control"/>
						<input type="text" placeholder="Hero Name" name="heroName" class="form-control"/>
						<input type="text" placeholder="Series" name="series" class="form-control"/>
						<input type="number" placeholder="Rating" name="rating" class="form-control"/>
						<button type="button">Create</button>
			</form>
</html>