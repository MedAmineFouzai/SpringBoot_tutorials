<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<div>
	<div>
		Liste Of Vehicles
	</div>
<div>
<table>
	 <tr>

		<th>Vehicle Id</th>
		<th>Vehicle Type</th>
		<th>Vehicle Model</th>
		<th>Vehicle Creation Date</th>
		<th>Vehicle Price</th>
		<th>Edit</th>
 	</tr>
 
 	<c:forEach items="${vehicles}" var="v">
 		<tr>
 			<td>${v.vehicleId }</td>
 			<td>${v.vehicleType }</td>
 			<td>${v.vehicleModel }</td>
			<td><fmt:formatDate pattern="dd/MM/yyyy" value="${v.vehicleCreationDate }"/></td>
    		<td>${v.vehiclePrice }</td>
 			<td><a onclick="return confirm('are you sure ?')" href="deleteVehicle?id=${v.vehicleId}">Delete</a></td>
 			<td><a href="changeVehicle?id=${v.vehicleId}">Edit</a></td>
 		</tr>
 	 </c:forEach>
 </table>
 </div>
</div>
