<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<t:master>
	<jsp:attribute name="header">
    </jsp:attribute>
	<jsp:body>

<!--  Formulaire -->

<form:form modelAttribute="todo" method="post" action="addTodo">
 <div class="form-group">
      <label for="todoDescription">Description</label>
      <form:textarea rows="" cols="" path="description" class="form-control" id="todoDescription" placeholder="Enter todo description"></form:textarea>
      
      
      <label for="todoStatus">Status</label>
      <form:input  path="status" class="form-control" aria-describedby="dateHelp"/>
      
      <br/>
       <label for="createdDate">Created Date</label>
       <form:input type="date"  path="createdDate" class="form-control" id="createdDate" aria-describedby="dateHelp" placeholder="Enter the creation date"/>
      
       <label for="completeDate">Completed Date</label>
       <form:input type="date"  path="completeDate" class="form-control" id="completedDate" aria-describedby="dateHelp" placeholder="Enter the completiontion date"/>
      
      <label for="creator">Creator</label>
       <form:input type="text"  path="creator" class="form-control" id="creator" placeholder="Enter creator complete name"/>
      
      <label for="creator">Email</label>
      <form:input type="email"   path="email" class="form-control" id="creatorEmail1" aria-describedby="emailHelp" placeholder="Enter Creator email Address"/>
      
     <!--   <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
    </div>
    
    <div class="btn-group-vertical" data-toggle="buttons">
  <button type="submit" class="btn btn-primary">Add</button>
    </div>
    </form:form>
    
   
  


 </jsp:body>
</t:master>


