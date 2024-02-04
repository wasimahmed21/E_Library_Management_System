

<%@page import="library.management.entities.BorrowBook"%>
<%@page import="java.util.Base64"%>
<%@page import="library.management.entities.Book"%>
<%@page import="library.management.entities.PurchasedBook"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goBack() {
		window.history.back();
	}
</script>

<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f4f4f4;
	color: black;
	margin: 0;
	padding: 20px;
	text-align: center;
	background: url('/LibraryManagement/resources/images/userimg35.jpg')
		center center fixed;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}

h1 {
	margin-top: 40px;
	color: #333;
}

.order-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	max-width: 1200px;
	margin: 20px auto;
}

.order-card {
	width: 300px;
	display: block;
	border: 1px solid #ddd;
	border-radius: 8px;
	margin: 10px;
	padding: 15px;
	background-color: rgba(255, 255, 255, 0.3);
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.book-details {
	margin-top: 10px;
	display: block;
}

.book-name {
	font-size: 20px;
	font-weight: bold;
	color: black;
	margin-bottom: 10px;
	display: block;
}

.action-button {
	padding: 10px 20px;
	background-color: #2980b9;
	border-radius: 20px;
	border: none;
	margin-top: 5px;
}

.book-price {
	display: block;
	margin-top: 5px;
	font-size: 16px;
	color: #333;
	font-weight: bold;
}

.rupees-symbol {
	font-size: 14px;
	color: #333;
}

.book-cover {
	margin-top: 10px;
	max-width: 100%;
	height: auto;
	display: block;
}

.order-date, .book-count {
	margin-top: 10px;
	color: black;
	font-weight: bold;
	display: block;
}
</style>
</head>

<body>
	<header>
		<jsp:include page="Header.jsp" />
	</header>
	<h1>Your borrowed books</h1>
	<%
    List<BorrowBook> bookList = (List<BorrowBook>) request.getAttribute("borrowedBooks");
    %>

	<%
    if (!bookList.isEmpty()) {
    %>
	<div class="order-container">
		<%
            for (BorrowBook borrowBook : bookList) {

            	String bookCover = Base64.getEncoder()
            	.encodeToString((borrowBook.getBookCover()).getBytes(1, (int) (borrowBook.getBookCover().length())));
            %>
		<div class="order-card">
			<div class="book-details">
				<div class="book-name"><%=borrowBook.getBookName()%></div>
				<img class="book-cover" src="data:image/png;base64, <%=bookCover%>"
					alt="<%=borrowBook.getBookName()%>">
			</div>
			<div class="order-date">
				Borrow Date:
				<%=borrowBook.getBorrowDate()%></div>
			<div class="book-count">
				Return Date:
				<%=borrowBook.getReturnDate()%></div>
			<div class="book-count">
				Fine :
				<%=borrowBook.getFine()%></div>

			<form
				action="<%=borrowBook.getFine() > 0 ? "pay-fine" : "return-book"%>">
				<input type="hidden" name="borrowedId"
					value="<%=borrowBook.getBorrowedId()%>">

				<% if (borrowBook.getFine() > 0) { %>
                        
                   <a class="action-button" href="pay-fine?borrowedId=<%= borrowBook.getBorrowedId() %>">
                   Pay Fine</a>
                    <% } %>
				<%
                    if (!borrowBook.isApproveStatus()) {
                                                %>
				<!-- Display "Return Book" button -->
				<button class="action-button" type="submit">Return Book</button>
				<%
                        } else {
                        %>
				<!-- Display "Waiting for Approval" button -->
				<button type="button" disabled>Waiting for Approval</button>
				<%
                        }
                        %>
			</form>
		</div>
		<%
            }
            %>
	</div>
	<%
    } else {
    %>
	<h1>You didn't borrow any books!!</h1>
	<%
    }
    %>
	<div class="button-container">
		<button class="button" onclick="goBack()">Back</button>
	</div>
</body>
<jsp:include page="footer.jsp" />

</html>