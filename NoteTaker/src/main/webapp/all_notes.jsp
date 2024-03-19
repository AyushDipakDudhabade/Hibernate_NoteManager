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
    <title>Note Taker : All Notes</title>
    <%@include file ="all_css_jsp.jsp" %>
</head>
<body>

<div class="container">
    
    <%@include file ="navbar.jsp" %>
    <br>
       <h1>All note</h1>
</div>

<%
  Session s = FactoryProvider.getFactory().openSession();
  Query q = s.createQuery("from Note");
  List<Note> list = q.list();
  for(Note note : list){
%>	  

  <div class="card">
  <img class="card-img-top m-4 mx-auto" style="max-width:100px;" src="img/sticky-note.png" alt="Card image cap">
  <div class="card-body px-5" >
    <h5 class="card-title"> <%= note.getTitle() %> </h5>
    <p class="card-text"> <%= note.getContent() %> </p>
    <div class="container text-center mt-2">
    <a href="update_note.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Edit</a>
    <a href="DeleteServelet?note_id=<%= note.getId() %> "class="btn btn-danger">Delete</a>
    </div>
  </div>
</div>
  
  
<%
  }
  s.close();

%>


</body>
</html>