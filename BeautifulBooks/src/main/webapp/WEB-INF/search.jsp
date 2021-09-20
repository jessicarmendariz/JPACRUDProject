<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Search</title>
	</head>
	<body>
		<main class="container">
			<form  action="/searchBookById.do" id="search-id-form" class="form-one-intro" method="GET">
				<fieldset>
					<legend>
						Search by Book ID
					</legend>
					<section>
						<input type="number" placeholder="Book ID" name="id" class="form-control"/>
						<button type="submit" id="submit-id">Submit</button>
					</section>
				</fieldset>
			</form>
			<form  action="/searchBookByTitle.do" id="search-name-form" class="form-two-intro" method="GET">
				<fieldset>
					<legend>
						Search by Book Title
					</legend>
					<section>
						<input type="text" placeholder="Book TITLE" name="title"class="form-control"/>
						<button type="submit" id="submit-name">Submit</button>
					</section>
				</fieldset>
			</form>
		</main>
	</body>
</html>