<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> 
	<%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Insert title here</title>

    <style type="text/css">
      body {
        font-family: Hind SemiBold;
      }

      table,
      th,
      td {
        border: 1px solid black;
      }
    </style>
  </head>
  <body>
    <table>
      <c:forEach var="del" items="${delDetails}">
        <c:set var="id" value="${del.id}" />
        <c:set var="sAddress" value="${del.sAddress}" />
        <c:set var="rName" value="${del.rName}" />
        <c:set var="rAddress" value="${del.rAddress}" />
        <c:set var="itemType" value="${del.itemType}" />
        <c:set var="vehicle" value="${del.vehicle}" />
        <c:set var="dateTime" value="${del.dateTime}" />

        <tr>
          <td>Delivery ID</td>
          <td>${del.id}</td>
        </tr>
        <tr>
          <td>Sender address </td>
          <td>${del.sAddress}</td>
        </tr>
        <tr>
          <td>Receiver's name</td>
          <td>${del.rName}</td>
        </tr>
        <tr>
          <td>Receiver's address</td>
          <td>${del.rAddress}</td>
        </tr>
        <tr>
          <td>Item type</td>
          <td>${del.itemType}</td>
        </tr>
         <tr>
          <td>Vehicle</td>
          <td>${del.vehicle}</td>
        </tr>
         <tr>
          <td>Date & Time</td>
          <td>${del.dateTime}</td>
        </tr>
      </c:forEach>
    </table>

    <c:url value="updateDelivary.jsp" var="delupdate">
      <c:param name="id" value="${id}" />
      <c:param name="sAddress" value="${sAddress}" />
      <c:param name="rName" value="${rName}" />
      <c:param name="rAddress" value="${rAddress}" />
      <c:param name="itemType" value="${itemType}" />
      <c:param name="vehicle" value="${vehicle}" />
      <c:param name="dateTime" value="${dateTime}" />
    </c:url>

    <a href="${delupdate}">
      <input type="button" name="update" value="Update My Data" />
    </a>

    <br />
    <c:url value="deletecustomer.jsp" var="cusdelete">
      <c:param name="id" value="${id}" />
      <c:param name="name" value="${name}" />
      <c:param name="email" value="${email}" />
      <c:param name="uname" value="${username}" />
      <c:param name="pass" value="${password}" />
    </c:url>
    <a href="${cusdelete}">
      <input type="button" name="delete" value="Delete My Account" />
    </a>
  </body>
</html>
