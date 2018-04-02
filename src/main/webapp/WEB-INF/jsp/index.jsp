<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>
<div>
	<c:choose>
		<c:when test="${mode=='BOOK_VIEW' }">
			<div>
			<table class="responsive-table highlight">
			  <thead class=" grey darken-4 white-text">
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Book</th>
			      <th scope="col">Author</th>
			      <th scope="col">Date</th>
			      <th scope="col">Option</th>
			    </tr>
			  </thead>
			  <tbody>
			     
			    
			    <c:forEach var="books" items="${books}">
			    <tr>
			    	<th scope="row">${books.id}</th>
			      <td>${books.bookName}</td>
			      <td>${books.author}</td>
			      <td>${books.purchaseDate}</td>
			      <td><a href="/update?id=${books.id}">Editar</a> <a onclick="return confirmar()" href="delete?id=${books.id}">Eliminar</a> </td>
			   </tr>
			    </c:forEach>
			     
			    <tr>
			    
			    </tr>
			  </tbody>
			</table>
			</div>
		</c:when>
		<c:when test="${mode=='BOOK_EDIT'  || mode=='BOOK_NEW'}">
			<div class="row">
    <form class="col s12" action="/guardar" method="">
      <div class="row">
        <div class="input-field col s6">
          <i class="material-icons prefix">phone</i>
          <input value="${books.id }" id="id" name="id" type="tel" class="validate">
          <label for="icon_telephone">id</label>
        </div>
          <div class="input-field col s6">
          <i class="material-icons prefix">book</i>
          <input value="${books.bookName }" id="bookName" name="bookName"type="text" class="validate">
          <label for="icon_prefix">First Name</label>
        </div>
          <div class="input-field col s6">
          <i class="material-icons prefix">account_circle</i>
          <input value="${books.author }" id="author" name="author" placeholder="author" type="text" class="validate">
          <label for="icon_prefix">author</label>
        </div>
          <div class="input-field col s6">
          <i class="material-icons prefix">today</i>
          <input type="text" class="datepicker" class="form-control" value="${books.purchaseDate }" id="purchaseDate" name="purchaseDate">
          <label for="icon_prefix">Fecha</label>
        </div>
          <button class="btn waves-effect waves-light" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
      </div>
    </form>
  </div>
		</c:when>
	</c:choose>
</div>

<jsp:include page="footer.jsp"/>