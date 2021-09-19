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
			<form  action="/searchBookById.do" method="GET">
				<fieldset>
						<input type="id" placeholder="Book Id" name="bookId" class="form-control"/>
						<button type="button" id="submit-id">Submit</button>
				</fieldset>
			</form>
			<form  action="/searchBookByName.do" id="search-name-form" class="form-two-intro" method="GET">
				<fieldset>
						<input type="text" placeholder="Book Title" name="bookTitle"class="form-control"/>
						<button type="button" id="submit-name">Submit</button>
				</fieldset>
			</form>
		</main>
		<script type="text/javascript">
	</script>
	</body>
</html>