<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Create a Book</title>
	</head>
	<body>
		<main class="container">
			<form action="addBookToDB.do" class="form-intro" method="Post">
				<fieldset>
					<legend>
						Create a Book
					</legend>
					<section>
						<input type="text" placeholder="title" name="title" class="form-control"/>
						<textarea placeholder="description" name="description" class="form-control"></textarea>
						<input type="text" placeholder="heroine name" name="heroineName" class="form-control"/>
						<input type="text" placeholder="hero name" name="heroName" class="form-control"/>
						<input type="text" placeholder="series" name="series" class="form-control"/>
						<input type="number" placeholder="rating" name="rating" class="form-control"/>
						<input type="text" placeholder="image url" name="imageUrl" class="form-control"/>
						<div>
						<button type="submit">Create</button>
					</section>
				</fieldset>
			</form>
		</main>
	</body>
</html>