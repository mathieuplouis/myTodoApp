<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:master>
	<jsp:attribute name="header">
    </jsp:attribute>
	<jsp:body>

<!--  Formulaire -->

<form>
 <div class="form-group">
      <label for="todoDescription">Description</label>
      <textarea rows="" cols="" class="form-control" id="todoDescription" placeholder="Enter todo description"></textarea>
      
      
      <label for="todoStatus">Status</label>
      <select>
            <option>Done</option>
            <option>Started</option>
            <option>Canceled</option>
      </select>
      <br/>
       <label for="createdDate">Created Date</label>
       <input type="date" class="form-control" id="createdDate" aria-describedby="dateHelp" placeholder="Enter the creation date">
       
       <label for="completedDate">Completed Date</label>
       <input type="date" class="form-control" id="completedDate" aria-describedby="dateHelp" placeholder="Enter the completiontion date">
      
      <label for="creator">Creator</label>
       <input type="text" class="form-control" id="creator" placeholder="Enter creator complete name">
      
      <label for="creator">Email</label>
      <input type="email" class="form-control" id="creatorEmail1" aria-describedby="emailHelp" placeholder="Enter Creator email Address">
      
     <!--   <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
    </div>
    
    </form>

 </jsp:body>
</t:master>

