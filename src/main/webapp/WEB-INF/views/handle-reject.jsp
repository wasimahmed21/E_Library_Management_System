<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reject Return Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
            background: url('/LibraryManagement/resources/images/adminimg12.jpg') center center fixed;
            background-size: cover;
        }

        form {
            display: inline-block;
            text-align: left;
            border: 1px solid #dddddd;
            padding: 20px;
            margin-top:150px;
        }
        footer { 
    position: fixed; 
    bottom: 0; 
    left: 0; 
    z-index: 10;
}
		h2{
		color:#fff;
		}
        label {
            display: block;
            margin-bottom: 10px;
            color:#fff;
        }

        textarea {
            width: 100%;
            height: 100px;
            resize: none;
            background-color :rgba(255,255,255,0.5);
            margin-bottom: 20px;
        }
		input{
		background-color :rgba(255,255,255,0.5);
		}
        button {
            padding: 10px 20px;
            background-color: #ff0000;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<header>
        <jsp:include page="admin-header.jsp" />
    </header>
    <form action="process-reject-return" onsubmit="return validateForm()">
        <h2>Reject Return Book</h2>
       <!--  <label for="borrowedId">Borrowed ID:</label>
        <input type="text" id="borrowedId" name="borrowedId" required> -->
        
        <label for="rejectReason">Rejection Reason:</label>
        <textarea id="rejectReason" name="rejectReason" required></textarea>
         <input type = "text" name = "bookName" 
         value = "<%=request.getAttribute("bookName") %>" readonly/>
         <input type = "text" name = "borrowedId" 
         value = "<%=request.getAttribute("borrowedId") %>" readonly/>
         <input type = "text" name = "userEmailId" 
         value = "<%=request.getAttribute("userEmailId") %>" readonly/>
        <button type="submit" name="action" value="sendEmail">Send Email</button>
    </form>
    
<script>
    function validateForm() {
        // Your existing validation logic

        // If validation is successful, show the alert
        alert('Email sent successfully!');
        return true; // Allow the form submission
    }
</script>
</body>
<footer>
<jsp:include page="footer.jsp" />
</footer>
</html>
