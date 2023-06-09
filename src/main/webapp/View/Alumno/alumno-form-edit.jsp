<%-- 
    Document   : alumno-form-new
    Created on : May 18, 2023, 1:42:44 PM
    Author     : xbest
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
  <%@ include file="/View/Container/head.jsp" %>
  
    <body>
        
        <div class="row grow w-100">  
            
   <%@ include file="/View/Container/header.jsp" %>     
   <%@ include file="/View/Container/nav.jsp" %>
        
   
   <div class="main col-10 h-100 py-3">            
        
        <div class="container">
       
       
            <div class="row">
                <h1>Editar Datos de Alumno</h1>
                <a href="${pageContext.request.contextPath}/Alumno?action=index" class="btn-outline-secondary volver">Regresar al inicio</a>
            </div>       
            
            <div class="row">        
      
        
        <form action="${pageContext.request.contextPath}/Alumno?action=update" method="post">     
      
            <div class="mb-3">
                <label for="dni" class="form-label">DNI</label>
                <input type="text" name="dni" value="${alumno.dni}" autocomplete="off" class="form-control"/>            
                <c:if test="${errores != null && not empty errores.dni}">
                    <div style="color:red;">${errores.dni}</div>
                </c:if>
            </div>
                
            <div class="mb-3">
                <label for="apellidoPaterno" class="form-label">Apellido paterno</label>
                <input type="text" name="apellidoPaterno" value="${alumno.apellido_paterno}" autocomplete="off" class="form-control"/> 
                <c:if test="${errores != null && not empty errores.apellido_paterno}">
                    <div style="color:red;">${errores.apellido_paterno}</div>
                </c:if>            
            </div>
            
            <div class="mb-3">
                <label for="apellidoMaterno" class="form-label">Apellido materno</label>
                <input type="text" name="apellidoMaterno" value="${alumno.apellido_materno}" autocomplete="off" class="form-control"/>            
                <c:if test="${errores != null && not empty errores.apellido_materno}">
                    <div style="color:red;">${errores.apellido_materno}</div>
                </c:if>               
            </div>
            
            <div class="mb-3">
                <label for="nombres" class="form-label">Nombres</label>
                <input type="text" name="nombres" value="${alumno.nombres}" autocomplete="off" class="form-control"/>            
                <c:if test="${errores != null && not empty errores.nombres}">
                    <div style="color:red;">${errores.nombres}</div>
                </c:if>             
            </div>
            
            <div class="mb-3">
                <label for="fechaNacimiento" class="form-label">Fecha de nacimiento</label>
                <input type="date" name="fechaNacimiento" id="fechaNacimiento" value="${alumno.fecha_nacimiento}" class="form-control">            
                <c:if test="${errores != null && not empty errores.fecha_nacimiento}">
                    <div style="color:red;">${errores.fecha_nacimiento}</div>
                </c:if>            
            </div>
            
            <div class="mb-3">
                <label for="correoElectronico" class="form-label">Correo electrónico</label>
                <input  type="email" name="correoElectronico" id="correoElectronico" value="${alumno.correo_electrico}" autocomplete="off" class="form-control">            
                <c:if test="${errores != null && not empty errores.correo_electronico}">
                    <div style="color:red;">${errores.correo_electronico}</div>
                </c:if>             
            </div>
            
            <div class="mb-3">
                <input type="submit" value="Editar" class="btn btn-primary">
            </div>
                
            <input type="hidden" name="id" value="${alumno.alumno_id}">
            
            
        </form>
            
            
         </div>   
        
        </div>   
            
         </div>
            
         </div>
            <%@ include file="/View/Container/footer.jsp" %>
    </body>
</html>
