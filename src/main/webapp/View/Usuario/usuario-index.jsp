<%-- 
    Document   : alumno-index
    Created on : May 25, 2023, 1:03:29 PM
    Author     : xbest
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  
import= "JavaBean.Alumno, java.util.ArrayList"
%>
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
   
            <div class="row" >
                <h1>Inicio Usuarios</h1>
                <a href="${pageContext.request.contextPath}/Usuario?action=new">Nuevo</a>
            </div>
            
            <div class="row">
        

        <form action="${pageContext.request.contextPath}/Usuario?action=index" method="post">
            <label for="apellidosNombres" class="form-label">Apellidos y nombres</label>
            <input type="text" name="apellidosNombres" id="apellidosNombres" value="" autocomplete="off" class="form-control"/>

            <input type="submit" value="Buscar" class="btn btn-secondary">

        </form>


        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Codigo</th>
                <th scope="col">DNI</th>
                <th scope="col">Apellidos y Nombres</th>
                <th scope="col">Rol</th>
                <th scope="col">Operaciones</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${usuarios}" var="u">
            <tr>
                <td>${u.usuario_id}</td>
                <td>${u.dni}</td>
                <td>${u.apellidosNombres}</td>        
                <td>${u.rol}</td>        
                <td>
                    <a href="${pageContext.request.contextPath}/Usuario?action=edit&id=${u.usuario_id}" class="btn btn-secondary" role="button">Editar</a>
                    <a href="${pageContext.request.contextPath}/Usuario?action=cambioClave&id=${u.usuario_id}" class="btn btn-secondary" role="button">Cambiar Clave</a>
                    <a href="#delete" class="btn btn-secondary" role="button" data-id="${u.usuario_id}">Eliminar</a>
                </td>                    
            </tr>
            </c:forEach>
            </tbody>
        </table>
            
            </div>
            </div>
            </div>
   
 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
 <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
      
  
   $( function() { 
    
   $( "#dialog-confirm" ).hide();  
      
      
   $('a[href="#delete"]').click(function(){
        var id=$(this).attr("data-id");        
        
      $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {
        "Si": function() {         
          $( this ).dialog( "close" );                 
          $(location).prop("href", "${pageContext.request.contextPath}/Usuario?action=delete&id="+id);          
        },
        "No": function() {
          $( this ).dialog( "close" );
        }
      }
    });
        
        
    });   
      
      
   } );
      
 
  </script>           
            
  <%@ include file="/View/Container/footer.jsp" %>
</body>

<div id="dialog-confirm" title="¡Alerta!">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>¿Esta seguro de eliminar este registro?</p>
</div>

</html>
