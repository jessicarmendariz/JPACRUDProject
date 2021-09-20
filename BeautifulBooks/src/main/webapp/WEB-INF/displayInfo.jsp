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
		<main>
			<img src="${book.imageUrl}" class="img-intro"/>
			<section class="right info-intro">
				<section class="info">
					<div>
						<h2>${book.title}</h2>
					</div>
					<article>
						<p>${book.description}</p>
						<div class="meta">
							<p>Heroine: ${book.heroineName}</p> 
							<p>Hero: ${book.heroName}</p> 
							<p>Series: ${book.series}</p>
							<p>Rating: ${book.rating}</p>
						</div>
					</article>
				</section>
				<section class="nav">
					<form action="bookUpdateForm.do" method="POST" id="update-book">
						<input type="hidden" name="id" value="${book.id}"/>
						<button type="submit" id="update">Update</button>
					</form>
					<form action="deleteBookFromDB.do" method="POST" id="delete-book">
						<input type="hidden" name="id" value="${book.id}"/>
						<button type="submit" id="delete">Delete</button>
					</form>
				</section>
			</section>
		</main>
		<script type="text/javascript">
			setTimeout(() => {
				document.querySelector("img").classList.remove("img-intro");
				document.querySelector("img").classList.add("bounce");
			}, 500);
			document.querySelector("#update")
					.addEventListener("click", () => {
						exitAnimation();
						setTimeout(() => {
							document.querySelector("#update-book").submit();
						}, 500);
					});
			document.querySelector("#delete")
					.addEventListener("click", () => {
						exitAnimation();
						setTimeout(() => {
							document.querySelector("#delete-book").submit();
						}, 500);
					});
			}
		</script>
	</body>
</html>