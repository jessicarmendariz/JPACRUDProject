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
						<input type="number" placeholder="Book ID" name="bookId" class="form-control"/>
						<button type="button" id="submit-id">Submit</button>
					</section>
				</fieldset>
			</form>
			<form  action="/searchBookByName.do" id="search-name-form" class="form-two-intro" method="GET">
				<fieldset>
					<legend>
						Search by Book Title
					</legend>
					<section>
						<input type="text" placeholder="Book TITLE" name="title"class="form-control"/>
						<button type="button" id="submit-name">Submit</button>
					</section>
				</fieldset>
			</form>
		</main>
		<script type="text/javascript">
		let form = document.querySelectorAll("form");
		document.querySelector("#submit-dex")
				.addEventListener("click", () => {
					PageAnimation();
					setTimeout(() => {
						document.querySelector("#search-dex-form").submit();
					}, 500);
				});
		document.querySelector("#submit-name")
				.addEventListener("click", () => {
					PageAnimation();
					setTimeout(() => {
						document.querySelector("#search-name-form").submit();
					}, 500);
				s});
		function PageAnimation() {
					form[0].classList.remove("form-one-intro");
					form[0].classList.add("form-one-exit");
					form[1].classList.remove("form-two-intro");
					form[1].classList.add("form-two-exit");
		};
	</script>
	</body>
</html>