<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file ="all_css_jsp.jsp" %>
</head>
<body>
	<div class="container">

		<%@include file="navbar.jsp"%>
		<br>
		<h1>This is add note page</h1>

		<!-- This is add form -->
		<form action="SaveNoteServelet" method="post">
			
			<div class="form-group">
				<label for="title">Add Title</label> 
				<input 
				name="title"
				required type="text" 
				id="title" 
				placeholder="Enter here"
				class="form-control" 
				aria-descibedly="email-help" />	
			</div>

			<div class="form-group">
				<label for="content">Add Content</label>
				<textarea 
				name="content"
				required id="content"
				placeholder="Enter your content here"
				class="form-control" 
				style="Height:300px;" ></textarea>
			</div>
	
	        <div class ="container text-center">
            <button type="submit" class="btn btn-primary">Add</button>
	        </div>

	     </form>

	</div>

</body>
</html>