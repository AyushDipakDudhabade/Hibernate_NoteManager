<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <title>Note Taker : Update Page</title>
    <%@include file ="all_css_jsp.jsp" %>

</head>
<body>


	<div class="container">

       <%@include file="navbar.jsp"%>

	   <% 
       int noteId = Integer.parseInt(request.getParameter("note_id"));
       Session s = FactoryProvider.getFactory().openSession();
       Note note = (Note)s.get(Note.class,noteId);
       %>


		<!-- This is update form -->
		<form action="UpdateServelet" method="post">

            <input value="<%= note.getId() %>" name="noteId" type="hidden"/>

			<div class="form-group">
				<label for="title">Add Title</label> <input name="title" required
					type="text" id="title" placeholder="Enter here"
					class="form-control" aria-descibedly="email-help" value="<%= note.getTitle() %>"/> 
			</div>

			<div class="form-group">
				<label for="content">Add Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your content here" class="form-control"
					style="Height: 300px;"><%= note.getContent() %>
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Update</button>
			</div>

		</form>
		<%
		   s.close();
		%>
	</div>




</body>
</html>