 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <sec:authentication var="principal" property="principal" />
   <input type="hidden" value='${principal.username}' name="dg_user_id" id="dg_user_id"> 
   
       <h1 class="mb-0 fw-700 text-center mt-3">
            ${principal.username}
       </h1>
       
       
		<c:forEach var="UserList" items="${ UserList }">
          <td>${ UserList.dg_user_id }</td>
          <td>${ UserList.dg_user_pw }</td>
        <br>
    	</c:forEach>
    	</br>
<!--     	 <button type="button" id="logout"  onclick="submitAtag()">logout</button> -->

       <form action="/logout" method="POST" name="logOutForm">
   	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
   	 <a class="dropdown-item fw-500 pt-3 pb-3"  onclick="submitAtag()">
          	Logout
<!--           	<span class="float-right fw-n">&commat;codexlantern</span> -->
      	 </a>
   	</form>


</body>

<!-- 09.08 로그아웃 -->
<script type="text/javascript">
       function submitAtag(){ 
             let form = document.logOutForm;
             form.submit(); 
         } 
 </script>

</html>